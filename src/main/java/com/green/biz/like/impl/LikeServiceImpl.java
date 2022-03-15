package com.green.biz.like.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.LikeDAO;
import com.green.biz.dto.LikeVO;
import com.green.biz.dto.ProductVO;
import com.green.biz.like.LikeService;
import com.green.biz.product.ProductService;

@Service("likeService")
public class LikeServiceImpl implements LikeService {

	@Autowired
	private LikeDAO likeDao;

	@Override
	public List<LikeVO> listLike(String id) {
		
		return likeDao.listLike(id);
	}

	@Override
	public void insertLike(LikeVO vo) {
		
		likeDao.insertLike(vo);
	}

	@Override
	public void deleteLike(int lseq) {
		
		likeDao.deleteLike(lseq);
	}
	

}
