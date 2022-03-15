<<<<<<< HEAD
package com.green.biz.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.MemberDAO;
import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.member.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO mDao;
	
	@Override
	public MemberVO getMember(String id) {
		
		return mDao.getMember(id);
	}

	@Override
	public void insertMember(MemberVO vo) {
		
		mDao.insertMember(vo);
	}

	@Override
	public int confirmId(String id) {
		
		return mDao.confirmId(id);
	}

	@Override
	public int loginId(MemberVO vo) {
		
		return mDao.loginId(vo);
	}

	@Override
	public List<AddressVO> selectAddressByDong(String dong) {
		
		return mDao.selectAddressByDong(dong);
	}

	@Override
	public List<MemberVO> listMember(String name) {
		
		return mDao.listMember(name);
	}

}
=======
package com.green.biz.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.MemberDAO;
import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.member.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO mDao;
	
	@Override
	public MemberVO getMember(String id) {
		
		return mDao.getMember(id);
	}

	@Override
	public void insertMember(MemberVO vo) {
		
		mDao.insertMember(vo);
	}

	@Override
	public int confirmId(String id) {
		
		return mDao.confirmId(id);
	}

	@Override
	public int loginId(MemberVO vo) {
		
		return mDao.loginId(vo);
	}

	@Override
	public List<AddressVO> selectAddressByDong(String dong) {
		
		return mDao.selectAddressByDong(dong);
	}

}
>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
