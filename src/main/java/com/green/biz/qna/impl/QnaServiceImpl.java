package com.green.biz.qna.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.QnaDAO;
import com.green.biz.dto.QnaVO;
import com.green.biz.qna.QnaService;

@Service("qnaService")
public class QnaServiceImpl implements QnaService {

	@Autowired
	private QnaDAO qDao;
	
	@Override
	public List<QnaVO> listQna(String userid) {
		
		return qDao.listQna(userid);
	}

	@Override
	public QnaVO getQna(int qseq) {
		
		return qDao.getQna(qseq);
	}

	@Override
	public void insertQna(QnaVO vo) {
		
		qDao.insertQna(vo);
	}

	@Override
	public List<QnaVO> adminQnaList() {
		
		return qDao.adminQnaList();
	}

	@Override
	public void updateQna(QnaVO vo) {
		
		qDao.updateQna(vo);
	}

}
