<<<<<<< HEAD
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
=======
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
	
	public void insertLike(LikeVO vo) {
		
		mybatis.insert("mappings.like-mapping.insertLike", vo);
	}
	
	public List<LikeVO> listLike(LikeVO vo){
		
		return mybatis.selectList("mappings.like-mapping.listLike", vo);
	}
	
	public int selectMaxLseq() {
		
		return mybatis.selectOne("mappings.like-mapping.selectMaxLseq");
	}
	
	public void insertLikeDetail(LikeVO vo) {
		
		mybatis.selectList("mappings.like-mapping.insertLikeDetail", vo);
	}
}
>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
