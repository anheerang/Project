package com.green.view;


import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.biz.dto.MemberVO;
import com.green.biz.dto.RsvVO;
import com.green.biz.rsv.RsvService;

@Controller
public class RsvController {

	@Autowired
	private RsvService rsvService;
	
	@PostMapping(value="/rsv_confirmed")
	public String rsvAction(RsvVO vo,Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		}else {
			vo.setId(loginUser.getId());
			
			System.out.println("rsvAction(): vo="+vo);
			String rvday = vo.getRvdate();
			String rvtime = vo.getRvtime();
			
			model.addAttribute("rvtimes", rvtime);
			model.addAttribute("rvday", rvday);
			rsvService.insertRsv(vo);
			
			return "redirect:rsv_list";
		}
}
	
	@RequestMapping(value="rsv_list")
	public String rsvListView(Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
		if(loginUser==null) {
			return "member/login";
		}else {
				
			List<RsvVO> rsvList = rsvService.listRsv(loginUser.getId());
			model.addAttribute("rsvList", rsvList);
			
			return "mypage/rsvList";
		}
	
}
	
}






