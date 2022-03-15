package com.green.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ProductDAO;
import com.green.biz.dto.ProductVO;
import com.green.biz.product.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO pDao;
	
	@Override
	public ProductVO getProduct(ProductVO vo) {
		
		return pDao.getProduct(vo);
	}

	@Override
	public List<ProductVO> getProductList() {
		
		return pDao.getProductList();
	}

	@Override
	public List<ProductVO> listProduct(String userid) {
		
		return pDao.listProduct(userid);
	}

	@Override
	public List<ProductVO> categoryProduct(ProductVO vo) {
		
		return pDao.categoryProduct(vo);
	}

	@Override
	public List<ProductVO> adminListProduct(String name) {
		
		return pDao.adminListProduct(name);
	}

	@Override
	public void insertProduct(ProductVO vo) {
		
		pDao.insertProduct(vo);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		
		pDao.updateProduct(vo);
	}

	@Override
	public List<ProductVO> selectProductbyName(String name) {
		
		return pDao.selectProductbyName(name);
	}



}
