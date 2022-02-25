package com.green.biz.qna;

import java.util.List;

import com.green.biz.dto.QnaVO;

public interface QnaService {

	List<QnaVO> listQna(String userid);

	QnaVO getQna(int qseq);

	void insertQna(QnaVO vo);

}