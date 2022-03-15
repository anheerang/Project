package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ProductVO;


@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public ProductVO getProduct(ProductVO vo) {
		
		return mybatis.selectOne("mappings.product-mapping.getProduct",vo);
	}
	
	public List<ProductVO> getProductList() {
		
		return mybatis.selectList("mappings.product-mapping.getProductList");
	}
	
	public List<ProductVO> listProduct(String userid){
		
		return mybatis.selectList("mappings.product-mapping.listProduct",userid);
	}
	
	public List<ProductVO> categoryProduct(ProductVO vo){
		
		return mybatis.selectList("mappings.product-mapping.categoryProduct",vo);
	}
	
	public List<ProductVO> adminListProduct(String name){
		
		return mybatis.selectList("mappings.product-mapping.adminListProduct", name);
				
	}
	
	public void insertProduct(ProductVO vo) {
		
		mybatis.insert("mappings.product-mapping.insertProduct", vo);
	}
	
	public void updateProduct(ProductVO vo) {
		
		mybatis.update("mappings.product-mapping.updateProduct", vo);
	}
	
	public List<ProductVO> selectProductbyName(String name){
		
		return mybatis.selectList("mappings.product-mapping.selectProductbyName", name);
	}
	
}
