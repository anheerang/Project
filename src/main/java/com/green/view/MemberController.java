<<<<<<< HEAD
package com.green.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.member.MemberService;

@Controller
@SessionAttributes("loginUser")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 로그인화면
	@GetMapping(value="/login_form")
	public String loginView() {
		return "member/login";
	}
	
	// 로그인확인화면
	@PostMapping(value="/login")
	public String loginAction(MemberVO vo ,Model model) {
		MemberVO loginUser = null ;
		
		int result = memberService.loginId(vo);
		
		if(result == 1) {
			loginUser = memberService.getMember(vo.getId());
			model.addAttribute("loginUser", loginUser);
			
			return "redirect:/index";
		
		}else {
			return "member/login_fail";
		}
	}
	
	@GetMapping(value="/contract")
	public String contractView(){
		
		return "member/contract";
	}
	
	@PostMapping(value="/join_form")
	public String joinView() {
		
		return "member/join";
	}
	
	@GetMapping(value="/id_check_form")
	public String idCheckView(MemberVO vo,Model model) {
		model.addAttribute("id", vo.getId());
		
		return "member/idcheck";
	}
	
	@PostMapping(value="/id_check_form")
	public String idCheckAction(MemberVO vo,Model model) {
		
		int result = memberService.confirmId(vo.getId());
		
		model.addAttribute("message", result);
		model.addAttribute("id",vo.getId());
		
		return "member/idcheck";
	}
	
	@GetMapping(value="/id_check_confirmed")
	public String idCheckConfirmed(MemberVO vo,Model model) {
		
		model.addAttribute("id", vo.getId());
		model.addAttribute("reid", vo.getId());
		
		return "member/join";
	}
	
	@PostMapping(value="/join")
	public String joinAction(@RequestParam(value="addr1")String addr1,
							 @RequestParam(value="addr2")String addr2,
							 MemberVO vo) {
		
		vo.setAddress(addr1+" "+addr2);
		memberService.insertMember(vo);
		
		return "member/login";
	}
	
	@GetMapping(value="/find_zip_num")
	public String findZipNumView() {
		return "member/findZipNum";
	}
	
	@PostMapping(value="find_zip_num")
	public String findZipNumAction(AddressVO vo,Model model) {
		
		List<AddressVO> addressList = memberService.selectAddressByDong(vo.getDong());
		
		model.addAttribute("addressList", addressList);
		
		return "member/findZipNum";
	}
	
	//로그아웃
	@GetMapping(value="logout")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		
		return "member/login";
	}
}







=======
package com.green.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.member.MemberService;

@Controller
@SessionAttributes("loginUser")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	// 로그인화면
	@GetMapping(value="/login_form")
	public String loginView() {
		return "member/login";
	}
	
	// 로그인확인화면
	@PostMapping(value="/login")
	public String loginAction(MemberVO vo ,Model model) {
		MemberVO loginUser = null ;
		
		int result = memberService.loginId(vo);
		
		if(result == 1) {
			loginUser = memberService.getMember(vo.getId());
			model.addAttribute("loginUser", loginUser);
			
			return "redirect:/index";
		
		}else {
			return "member/login_fail";
		}
	}
	
	@GetMapping(value="/contract")
	public String contractView(){
		
		return "member/contract";
	}
	
	@PostMapping(value="/join_form")
	public String joinView() {
		
		return "member/join";
	}
	
	@GetMapping(value="/id_check_form")
	public String idCheckView(MemberVO vo,Model model) {
		model.addAttribute("id", vo.getId());
		
		return "member/idcheck";
	}
	
	@PostMapping(value="/id_check_form")
	public String idCheckAction(MemberVO vo,Model model) {
		
		int result = memberService.confirmId(vo.getId());
		
		model.addAttribute("message", result);
		model.addAttribute("id",vo.getId());
		
		return "member/idcheck";
	}
	
	@GetMapping(value="/id_check_confirmed")
	public String idCheckConfirmed(MemberVO vo,Model model) {
		
		model.addAttribute("id", vo.getId());
		model.addAttribute("reid", vo.getId());
		
		return "member/join";
	}
	
	@PostMapping(value="/join")
	public String joinAction(@RequestParam(value="addr1")String addr1,
							 @RequestParam(value="addr2")String addr2,
							 MemberVO vo) {
		
		vo.setAddress(addr1+" "+addr2);
		memberService.insertMember(vo);
		
		return "member/login";
	}
	
	@GetMapping(value="/find_zip_num")
	public String findZipNumView() {
		return "member/findZipNum";
	}
	
	@PostMapping(value="find_zip_num")
	public String findZipNumAction(AddressVO vo,Model model) {
		
		List<AddressVO> addressList = memberService.selectAddressByDong(vo.getDong());
		
		model.addAttribute("addressList", addressList);
		
		return "member/findZipNum";
	}
	
	//로그아웃
	@GetMapping(value="logout")
	public String logout(SessionStatus status) {
		
		status.setComplete();
		
		return "member/login";
	}
}







>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
