package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ReviewVO;


@Repository
public class ReviewDAO  {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertReview(ReviewVO vo) {
		
		mybatis.insert("mappings.review-mapping.insertReview", vo);
	}
	
	public List<ReviewVO> listReview(){
		
		return mybatis.selectList("mappings.review-mapping.listReview");
	}
	
	public ReviewVO getReview(int vseq){
		
		return mybatis.selectOne("mappings.review-mapping.getReview",vseq);
	}
	
	public List<String> confirmContract() {
		
		return mybatis.selectList("mappings.review-mapping.confirmContract");
	}
}





