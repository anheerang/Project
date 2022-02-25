package com.green.biz.rsv;

import java.util.List;

import com.green.biz.dto.RsvVO;

public interface RsvService {

	String getRsvTime(int rseq);

	void insertRsv(RsvVO vo);
	
	List<RsvVO> listRsv(String userid);
}