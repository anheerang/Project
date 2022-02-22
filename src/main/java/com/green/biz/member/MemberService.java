package com.green.biz.member;

import com.green.biz.dto.MemberVO;

public interface MemberService {

	MemberVO getMember(String id);

	void insertMember(MemberVO vo);

	int confirmId(String id);

	int loginId(MemberVO vo);

}