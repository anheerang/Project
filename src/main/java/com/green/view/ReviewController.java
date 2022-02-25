package com.green.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.green.biz.dto.ReviewVO;
import com.green.biz.review.ReviewService;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@GetMapping(value="review_list")
	public String reviewListAction(Model model,ReviewVO vo) {
		
		List<ReviewVO> reviewList = reviewService.listReview();
		
		System.out.println("reviewListAction"+vo);
		model.addAttribute("reviewList",reviewList);
		
		return "review/reviewList";
	}
	
	
}










