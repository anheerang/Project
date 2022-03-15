<<<<<<< HEAD
package com.green.biz.qna;

import java.util.List;

import com.green.biz.dto.QnaVO;

public interface QnaService {

	List<QnaVO> listQna(String userid);

	QnaVO getQna(int qseq);

	void insertQna(QnaVO vo);
	
	List<QnaVO> adminQnaList();
	
	void updateQna(QnaVO vo);

=======
package com.green.biz.qna;

import java.util.List;

import com.green.biz.dto.QnaVO;

public interface QnaService {

	List<QnaVO> listQna(String userid);

	QnaVO getQna(int qseq);

	void insertQna(QnaVO vo);

>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
}