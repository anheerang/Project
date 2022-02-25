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
}
