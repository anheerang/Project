package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.RsvVO;



@Repository
public class RsvDAO  {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public String getRsvTime(int rseq) {
		
		return mybatis.selectOne("mappings.reservation-mapping.getRsvTime", rseq);
	}
	
	public void insertRsv(RsvVO vo) {
		
		mybatis.insert("mappings.reservation-mapping.insertRsv", vo);
	}
	
	public List<RsvVO> listRsv(String userid){
		
		return mybatis.selectList("mappings.reservation-mapping.listRsv", userid);
	}
}
