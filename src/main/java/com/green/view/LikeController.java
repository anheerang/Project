package com.green.view;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.dto.LikeVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.dto.ProductVO;
import com.green.biz.like.LikeService;

@Controller
public class LikeController {

	@Autowired
	private LikeService likeService;
	
	@GetMapping(value="/insert_like")
	public String insertLikeAction(LikeVO vo,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		}else {
			vo.setId(loginUser.getId());
			
			likeService.insertLike(vo);
		}
		
		return "redirect:like_list";
	}
	
	@RequestMapping(value="/like_list")
	public String likeListAction(HttpSession session,Model model) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		}else {
			
			List<LikeVO> likeList = likeService.listLike(loginUser.getId());
			
			model.addAttribute("likeList", likeList);
		}
		
		return "mypage/likeHome";
	}
	
	@GetMapping(value="/like_delete")
	public String likeDeleteAction(LikeVO vo,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		}else {
			vo.setId(loginUser.getId());
			
			likeService.deleteLike(vo.getLseq());
		}
		
		return "redirect:like_list";
	}
}

	
	
	
	
	
	
	