package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.LikeVO;


@Repository
public class LikeDAO  {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<LikeVO> listLike(String id){
		
		return mybatis.selectList("mappings.like-mapping.listLike", id);
	}
	
	public void insertLike(LikeVO vo) {
		
		mybatis.insert("mappings.like-mapping.insertLike", vo);
	}
	
	public void deleteLike(int lseq) {
		
		mybatis.delete("mappings.like-mapping.deleteLike", lseq);
	}
}
