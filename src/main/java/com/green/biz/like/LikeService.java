package com.green.biz.like;

import java.util.List;

import com.green.biz.dto.LikeVO;

public interface LikeService {

	List<LikeVO> listLike(String id);
	
	void insertLike(LikeVO vo);
	
	void deleteLike(int lseq);

}