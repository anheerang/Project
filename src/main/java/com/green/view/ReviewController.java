<<<<<<< HEAD
package com.green.view;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.contract.ContractService;
import com.green.biz.dto.ContractVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.dto.ReviewVO;
import com.green.biz.review.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	@Autowired
	private ContractService contractService;
	
	@GetMapping(value="/review_list")
	public String reviewListAction(Model model,ReviewVO vo) {
		
		List<ReviewVO> reviewList = reviewService.listReview();
		
		
		model.addAttribute("reviewList",reviewList);
		
		return "review/reviewList";
	}
	
	@GetMapping(value="/review_view")
	public String reviewView(Model model,ReviewVO vo,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		}else {
			vo.setId(loginUser.getId());
		
			ReviewVO reviewVO = reviewService.getReview(vo.getVseq());
			
			ContractVO contractVO = contractService.getContract(loginUser.getId());
			
			model.addAttribute("reviewVO", reviewVO);
			model.addAttribute("contractVO",contractVO);
			
			return "review/reviewView";
			
		}
	}
	
	@GetMapping(value="/review_write_form")
	public String reviewWriteForm(HttpSession session,ReviewVO vo,Model model) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		List<String> confirmId = reviewService.confirmContract();
		
		System.out.println(confirmId);
		if(loginUser==null) {
			
			return "member/login";
		}else {
			
			for(String ctId:confirmId) {
				
				if(ctId.matches(loginUser.getId())) {
					
					ContractVO ctVO = contractService.getContract(loginUser.getId());
					
					vo.setId(ctVO.getId());
					model.addAttribute("contractVO", ctVO);
					
					return "review/reviewWrite";
				}
			}
				
			model.addAttribute("msg", "계약완료된 고객님만 작성가능합니다.");
			model.addAttribute("url", "review_list");
					
			return "review/reviewFail";
		}
	}
	
	@PostMapping(value="/review_insert")
	public String reviewInsert(@RequestParam(value="id")String ctId,ReviewVO vo,HttpSession session) {
		
		vo.setId(ctId);
		
		reviewService.insertReview(vo);
		
		return "redirect:review_list";		
	}
}










=======
package com.green.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.green.biz.dto.ReviewVO;
import com.green.biz.review.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@GetMapping(value="review_list")
	public String reviewListAction(Model model,ReviewVO vo) {
		
		List<ReviewVO> reviewList = reviewService.listReview();
		
		System.out.println("reviewListAction"+vo);
		model.addAttribute("reviewList",reviewList);
		
		return "review/reviewList";
	}
	
	
}










>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
