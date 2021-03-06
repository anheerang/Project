<<<<<<< HEAD
package com.green.biz.review.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ReviewDAO;
import com.green.biz.dto.ReviewVO;
import com.green.biz.review.ReviewService;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDao;
	
	@Override
	public void insertReview(ReviewVO vo) {
		
		reviewDao.insertReview(vo);
	}

	@Override
	public List<ReviewVO> listReview() {
		
		return reviewDao.listReview();
	}

	@Override
	public ReviewVO getReview(int vseq) {
		
		return reviewDao.getReview(vseq);
	}

	@Override
	public List<String> confirmContract() {
		
		return reviewDao.confirmContract();
	}

}
=======
package com.green.biz.review.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ReviewDAO;
import com.green.biz.dto.ReviewVO;
import com.green.biz.review.ReviewService;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired
	private ReviewDAO reviewDao;
	
	@Override
	public void insertReview(ReviewVO vo) {
		
		reviewDao.insertReview(vo);
	}

	@Override
	public List<ReviewVO> listReview() {
		
		return reviewDao.listReview();
	}

	@Override
	public List<ReviewVO> getReview(int vseq) {
		
		return reviewDao.getReview(vseq);
	}

}
>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
