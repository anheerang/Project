package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.QnaVO;

@Repository
public class QnaDAO  {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<QnaVO> listQna(String userid){
		
		return mybatis.selectList("mappings.qna-mapping.listQna", userid);
	}
	
	public QnaVO getQna(int qseq){
		
		return mybatis.selectOne("mappings.qna-mapping.getQna", qseq);
	}
	
	public void insertQna(QnaVO vo) {
		
		mybatis.insert("mappings.qna-mapping.insertQna", vo);
	}
}


