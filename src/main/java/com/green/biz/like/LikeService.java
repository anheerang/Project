package com.green.biz.like;

import java.util.List;

import com.green.biz.dto.LikeVO;

public interface LikeService {

	int selectMaxLseq();
	
	int insertLike(LikeVO vo);

	List<LikeVO> listLike(LikeVO vo);
	
	void insertLikeDetail(LikeVO vo);

}