package com.green.biz.rsv.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.RsvDAO;
import com.green.biz.dto.RsvVO;
import com.green.biz.rsv.RsvService;

@Service("rsvService")
public class RsvServiceImpl implements RsvService {

	@Autowired
	private RsvDAO rsvDao;
	
	@Override
	public String getRsvTime(int rseq) {
		
		return rsvDao.getRsvTime(rseq);
	}

	@Override
	public void insertRsv(RsvVO vo) {
		
		rsvDao.insertRsv(vo);
	}

	@Override
	public List<RsvVO> listRsv(String userid) {
		
		return rsvDao.listRsv(userid);
	}

}
