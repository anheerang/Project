<<<<<<< HEAD
package com.green.biz.review;

import java.util.List;

import com.green.biz.dto.ReviewVO;

public interface ReviewService {

	void insertReview(ReviewVO vo);

	List<ReviewVO> listReview();

	ReviewVO getReview(int vseq);
	
	List<String> confirmContract();

=======
package com.green.biz.review;

import java.util.List;

import com.green.biz.dto.ReviewVO;

public interface ReviewService {

	void insertReview(ReviewVO vo);

	List<ReviewVO> listReview();

	List<ReviewVO> getReview(int vseq);

>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
}