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
	@Autowired 
	private ProductService productService;
	
	@Override
	public int insertLike(LikeVO vo) {
		
		int lseq = selectMaxLseq();
		
		vo.setLseq(lseq);
		likeDao.insertLike(vo);
		
		List<ProductVO> prodList = productService.listProduct(vo.getId());
		
		for(ProductVO productVO:prodList) {
			LikeVO like = new LikeVO();
			like.setLseq(lseq);
			like.setPseq(productVO.getPseq());
			
			insertLikeDetail(like);
		}
		
		return lseq;
	}

	@Override
	public List<LikeVO> listLike(LikeVO vo) {
		
		return likeDao.listLike(vo);
	}

	@Override
	public int selectMaxLseq() {
		
		return likeDao.selectMaxLseq();
	}

	@Override
	public void insertLikeDetail(LikeVO vo) {
		
		likeDao.insertLikeDetail(vo);
	}

}
