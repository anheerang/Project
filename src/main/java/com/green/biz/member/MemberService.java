package com.green.biz.member;

import java.util.List;

import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;

public interface MemberService {

	MemberVO getMember(String id);

	void insertMember(MemberVO vo);

	int confirmId(String id);

	int loginId(MemberVO vo);
	
	List<AddressVO> selectAddressByDong(String dong);

}