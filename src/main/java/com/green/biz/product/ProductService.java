package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductVO;

public interface ProductService {

	ProductVO getProduct(ProductVO vo);

	List<ProductVO> getProductList();
}