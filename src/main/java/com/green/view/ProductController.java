<<<<<<< HEAD
package com.green.view;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.RsvVO;
import com.green.biz.product.ProductService;
import com.green.biz.rsv.RsvService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	@Autowired
	private RsvService rsvService;
	
	@GetMapping(value="/product_list")
	public String productListAction(ProductVO vo,Model model) {
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
	
	@PostMapping(value="/category_list")
	public String categoryListAction(@RequestParam(value="buyKind",defaultValue="")String[] buyKind,
									 @RequestParam(value="homeKind",defaultValue="")String[] homeKind,
									 @RequestParam(value="roomKind",defaultValue="")String[] roomKind,
									 ProductVO vo,Model model) {
		
	
		List<ProductVO> cateList = productService.categoryProduct(vo);

		System.out.println("cateList:"+vo);
		model.addAttribute("productList", cateList);
		
		return "product/productList";
	}
	
}





=======
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





>>>>>>> branch 'feature' of https://github.com/anheerang/Project.git
