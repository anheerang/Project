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
	
	public void deleteRsv(int rseq) {
		
		mybatis.delete("mappings.reservation-mapping.deleteRsv",rseq);
	}
	
	public void updateRsv(int rseq) {
		
		mybatis.update("mappings.reservation-mapping.updateRsv", rseq);
	}
	
	public List<RsvVO> getListRsv(String mname){
		
		return mybatis.selectList("mappings.reservation-mapping.getListRsv",mname);
	}
	
	public void cancelRsv(int rseq) {
		
		mybatis.update("mappings.reservation-mapping.cancelRsv", rseq);
	}
	
	public RsvVO getRsv(RsvVO vo) {
		
		return mybatis.selectOne("mappings.reservation-mapping.getRsv", vo);
	}
	
	public String getRsvDay(RsvVO vo) {
		
		return mybatis.selectOne("mappings.reservation-mapping.getRsvDay", vo);
	}
}



