<<<<<<< HEAD
package com.green.view;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.green.biz.dto.MemberVO;
import com.green.biz.dto.QnaVO;
import com.green.biz.qna.QnaService;

@Controller
public class QnaController {

	@Autowired
	private QnaService qnaService;
	
	@GetMapping(value="qna_list")
	public String qnaListView(QnaVO vo,Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
			if(loginUser==null) {
				return "member/login";
			}else {
				
				List<QnaVO> qnaList = qnaService.listQna(loginUser.getId());
				
				model.addAttribute("qnaList", qnaList);
				
				return "qna/qnaList";
			}
	}
	
	@GetMapping(value="qna_write_form")
	public String qnaWriteView(QnaVO vo,Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
				if(loginUser==null) {
					return "member/login";
				}else {
				
					return "qna/qnaWrite";
				}
	}
	
	@PostMapping(value="qna_write")
	public String qnaWriteAction(QnaVO vo,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
				if(loginUser==null) {
					return "member/login";
				}else {
					
					vo.setId(loginUser.getId());
					qnaService.insertQna(vo);
					
					return "redirect:qna_list";
				}
	}
	
	@GetMapping(value="qna_view")
	public String qnaView(QnaVO vo,Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
				if(loginUser==null) {
					return "member/login";
				}else {
					
					vo.setId(loginUser.getId());
					
					QnaVO qnaVO = qnaService.getQna(vo.getQseq());
					
					model.addAttribute("qnaVO", qnaVO);
					
					return "qna/qnaView";
				}
	}
}









=======
package com.green.view;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.green.biz.dto.MemberVO;
import com.green.biz.dto.QnaVO;
import com.green.biz.qna.QnaService;

@Controller
public class QnaController {

	@Autowired
	private QnaService qnaService;
	
	@GetMapping(value="qna_list")
	public String qnaListView(QnaVO vo,Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
			if(loginUser==null) {
				return "member/login";
			}else {
				
				List<QnaVO> qnaList = qnaService.listQna(loginUser.getId());
				
				model.addAttribute("qnaList", qnaList);
				
				return "qna/qnaList";
			}
	}
	
	@GetMapping(value="qna_write_form")
	public String qnaWriteView(QnaVO vo,Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
				if(loginUser==null) {
					return "member/login";
				}else {
				
					return "qna/qnaWrite";
				}
	}
	
	@PostMapping(value="qna_write")
	public String qnaWriteAction(QnaVO vo,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
				if(loginUser==null) {
					return "member/login";
				}else {
					
					vo.setId(loginUser.getId());
					qnaService.insertQna(vo);
					
					return "redirect:qna_list";
				}
	}
	
	@GetMapping(value="qna_view")
	public String qnaView(QnaVO vo,Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
				if(loginUser==null) {
					return "member/login";
				}else {
					
					vo.setId(loginUser.getId());
					
					QnaVO qnaVO = qnaService.getQna(vo.getQseq());
					
					model.addAttribute("qnaVO", qnaVO);
					
					return "qna/qnaView";
				}
	}
}









>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
