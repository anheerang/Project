package com.green.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.green.biz.dto.ProductVO;
import com.green.biz.product.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@GetMapping(value="/product_list")
	public String productListAction(Model model) {
		List<ProductVO> prodList = productService.getProductList();
		
		model.addAttribute("productList", prodList);
		
		return "product/productList" ;
	}
	
	@GetMapping(value="/product_detail")
	public String productDetailAction(ProductVO vo,Model model) {
		ProductVO product = productService.getProduct(vo);
		
		model.addAttribute("productVO", product);
		
		return "product/productDetail";
	}
}





