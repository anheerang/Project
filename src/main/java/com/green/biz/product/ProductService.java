<<<<<<< HEAD
package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductVO;

public interface ProductService {

	ProductVO getProduct(ProductVO vo);

	List<ProductVO> getProductList();
	
	List<ProductVO> listProduct(String userid);
	
	List<ProductVO> categoryProduct(ProductVO vo);
	
	List<ProductVO> adminListProduct(String name);
	
	void insertProduct(ProductVO vo);
	
	void updateProduct(ProductVO vo);
	
	List<ProductVO> selectProductbyName(String name);
	

=======
package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductVO;

public interface ProductService {

	ProductVO getProduct(ProductVO vo);

	List<ProductVO> getProductList();
	
	List<ProductVO> listProduct(String userid);
>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
}