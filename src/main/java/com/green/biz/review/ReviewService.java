package com.green.biz.review;

import java.util.List;

import com.green.biz.dto.ReviewVO;

public interface ReviewService {

	void insertReview(ReviewVO vo);

	List<ReviewVO> listReview();

	List<ReviewVO> getReview(int vseq);

}