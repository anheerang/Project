<<<<<<< HEAD
package com.green.view;


import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
	public String rsvListView(RsvVO vo,Model model,HttpSession session) throws ParseException {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
		if(loginUser==null) {
			return "member/login";
		}else {
				
			List<RsvVO> rsvList = rsvService.listRsv(loginUser.getId());
			
			model.addAttribute("rsvList", rsvList);
			
			String rsvdate = "";
			
			for(int i=0; i<rsvList.size();i++) {
				rsvdate = rsvList.get(i).getRvdate();
			
			
				SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Date rvdate = transFormat.parse(rsvdate);
				
				Date today =new Date();
				
				if(rvdate.before(today)) {
					rsvService.updateRsv(rsvList.get(i).getRseq());
				}
			
			}
			return "mypage/rsvList";
		}
	
	}
	
	//예약취소팝업
	@GetMapping(value="/rsv_delete")
	public String deleteRsvView(RsvVO vo,Model model,HttpSession session) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		vo.setId(loginUser.getId());
		
		RsvVO rsvVO = rsvService.getRsv(vo);
		
		System.out.println("rsvVO:(팝업창내용)"+rsvVO);
		model.addAttribute("rsvVO", rsvVO);
		
		return "mypage/rsvCancel";
	}
	
	// 예약취소
	@GetMapping(value="/delete_rsv")
	public String deleteRsvAction(HttpSession session,RsvVO vo) {
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
				
		if(loginUser==null) {
			return "member/login";
		}else {
			
			vo.setId(loginUser.getId());
			System.out.println(vo);
			int rseq = rsvService.getRsv(vo).getRseq();
			System.out.println(rseq);
			
			rsvService.deleteRsv(rseq);
		}
				
			return "redirect:rsv_list";
	
	}
	
}






=======
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






>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
