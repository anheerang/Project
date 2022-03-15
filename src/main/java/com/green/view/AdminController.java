package com.green.view;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.green.biz.admin.AdminService;
import com.green.biz.contract.ContractService;
import com.green.biz.dto.ContractVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.QnaVO;
import com.green.biz.dto.RsvVO;
import com.green.biz.dto.WorkerVO;
import com.green.biz.member.MemberService;
import com.green.biz.product.ProductService;
import com.green.biz.qna.QnaService;
import com.green.biz.rsv.RsvService;

@Controller
@SessionAttributes("adminUser")
public class AdminController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private ProductService	productService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private RsvService rsvService ;
	@Autowired
	private QnaService qnaService;
	@Autowired
	private ContractService cttService;
	
	@GetMapping(value="/admin_login_form")
	public String adminLoginView() {
		
		return "admin/main";
	}
	
	@PostMapping("/admin_login")
	public String adminLoginAction(@RequestParam(value="workerId")String workerId,
								   @RequestParam(value="workerPwd")String workerPwd,
								   Model model) {
		
		WorkerVO vo = new WorkerVO();
		vo.setId(workerId);
		vo.setPwd(workerPwd);
		
		int result = adminService.workerCheck(vo);
		
		if (result == 1) {
			
			WorkerVO adminUser = adminService.getWorker(workerId);
			
			model.addAttribute("adminUser",adminUser);
			
			return "redirect:admin_product_list";
		}else {
			if(result == 0) {
				model.addAttribute("message", "비밀번호를 확인해주세요.");
			}else {
				model.addAttribute("message", "아이디를 확인해주세요.");
			}
			
			return "admin/main";
		}
		
	}
	
	@RequestMapping(value="/admin_product_list")
	public String adminProductListView(@RequestParam(value="key",defaultValue="")String name,
										HttpSession session, Model model) {
		
		WorkerVO adminUser = (WorkerVO)session.getAttribute("adminUser");
		
		if(adminUser == null) {
			return "admin/main";
		}else {
			
			List<ProductVO> productList = productService.adminListProduct(name);
			
			model.addAttribute("productList", productList);
			
			return "admin/product/productList";
		}
	}
	
	@GetMapping(value="/admin_product_detail")
	public String adminProductDetailView(ProductVO vo,Model model) {
		
		ProductVO product = productService.getProduct(vo);
		
		model.addAttribute("productVO", product);
		
		return "admin/product/productDetail";
	}
	
	@GetMapping(value="/admin_product_update_form")
	public String adminProductUpdateView(ProductVO vo,Model model) {
		
		ProductVO product = productService.getProduct(vo);
		
		model.addAttribute("productVO", product);
		
		return "admin/product/productUpdate";
	}
	
	
	/*
	 * 상품수정등록
	 */
	@PostMapping(value="/admin_update_form")
	public String adminUpdateAction(@RequestParam(value="product_image")List<MultipartFile> uploadFiles,
									@RequestParam(value="nonmakeImg")String[] origImage,
									ProductVO vo,HttpSession session)  {

		
		if(!uploadFiles.isEmpty()) {
			
			String fileName1 = uploadFiles.get(0).getOriginalFilename();
			String fileName2 = uploadFiles.get(1).getOriginalFilename();
			String fileName3 = uploadFiles.get(2).getOriginalFilename();
			
			System.out.println(fileName1);
			vo.setImage1(fileName1);
			vo.setImage2(fileName2);
			vo.setImage3(fileName3);
			
			String image_path = session.getServletContext().getRealPath("WEB-INF/resources/product_images/");
			System.out.println("이미지 경로: "+image_path);
			
			try {
				File dest1 = new File(image_path+fileName1);
				uploadFiles.get(0).transferTo(dest1);
				File dest2 = new File(image_path+fileName2);
				uploadFiles.get(1).transferTo(dest2);
				File dest3 = new File(image_path+fileName3);
				uploadFiles.get(2).transferTo(dest3);
			}catch(IllegalStateException | IOException e){
				e.printStackTrace();
			}
		}else {
			
			vo.setImage1(origImage[0]);
			vo.setImage2(origImage[1]);
			vo.setImage3(origImage[2]);
		}
		System.out.println(vo);
		productService.updateProduct(vo);
		
		return "admin/product/productDetail";
		
	}
	
	@PostMapping(value="/admin_product_write")
	public String adminProductWrite() {
		
		return "admin/product/productWrite";
	}
	
	/*
	 * 상품등록화면
	 */
	@PostMapping(value="/admin_product_insert")
	public String adminProductWriteAction(@RequestParam(value="product_image")List<MultipartFile> uploadFiles,
										  ProductVO vo,HttpSession session) {
		
		String image_path = session.getServletContext().getRealPath("WEB-INF/resources/product_images/");
		
		if(!uploadFiles.isEmpty()) {
			
			String fileName1 = uploadFiles.get(0).getOriginalFilename();
			String fileName2 = uploadFiles.get(1).getOriginalFilename();
			String fileName3 = uploadFiles.get(2).getOriginalFilename();
			
			vo.setImage1(fileName1);
			vo.setImage2(fileName2);
			vo.setImage3(fileName3);
			
			System.out.println("이미지경로: "+image_path);
			
			try {
				File dest1 = new File(image_path+fileName1);
				uploadFiles.get(0).transferTo(dest1);
				File dest2 = new File(image_path+fileName2);
				uploadFiles.get(1).transferTo(dest2);
				File dest3 = new File(image_path+fileName3);
				uploadFiles.get(2).transferTo(dest3);
			}catch(IllegalStateException |IOException e){
				e.printStackTrace();
			}
		}else {
			String defaultImage="default.jpg";
			vo.setImage1(defaultImage);
			vo.setImage2(defaultImage);
			vo.setImage3(defaultImage);
		}
		
		productService.insertProduct(vo);
		
		return "redirect:admin_product_list";
	}
	
	@RequestMapping(value="admin_member_list")
	public String adminMemberListView(@RequestParam(value="key",defaultValue="")String name,
									  Model model) {

			List<MemberVO> memberList = memberService.listMember(name);
			
			model.addAttribute("memberList", memberList);
			
			return "admin/member/memberList";
	}

	@RequestMapping(value="/admin_rsv_list")
	public String amindRsvListView(@RequestParam(value="key",defaultValue="")String mname,Model model) {
		
		List<RsvVO> rsvList = rsvService.getListRsv(mname);
		
		model.addAttribute("rsvList", rsvList);
		
		return "admin/rsv/rsvList";
	}
	
	/*
	@GetMapping(value="rsv_cancel")
	public String rsvCancelView() {
		
		return "admin/rsv/rsvCancel";
	}
	
	@PostMapping(value="rsv_cancel_ok")
	public String rsvCancelAction(RsvVO vo) {
		
		rsvService.cancelRsv(vo.getRseq());
		
		return "admin/rsv/rsvList";
	}
	*/
	
	// qna목록화면
	@RequestMapping(value="/admin_qna_list")
	public String adminQnaListView(Model model) {
		
		List<QnaVO> qnaList = qnaService.adminQnaList();
		
		model.addAttribute("qnaList", qnaList);
		
		return "admin/qna/qnaList";
	}
	
	// qna상세화면
	@RequestMapping(value="/admin_qna_detail")
	public String adminQnaDetailView(QnaVO vo,Model model) {
		
		QnaVO qnaVO = qnaService.getQna(vo.getQseq());
		
		model.addAttribute("qnaVO", qnaVO);
		
		return "admin/qna/qnaDetail";
	}
	
	@RequestMapping(value="/admin_qna_repsave")
	public String adminQnaRepsave(QnaVO vo,Model model) {
		
		qnaService.updateQna(vo);
		
		QnaVO qnaVO = qnaService.getQna(vo.getQseq());
		
		model.addAttribute("qnaVO", qnaVO);
		
		return "admin/qna/qnaDetail";
	}
	
	//qna답변 수정화면
	@GetMapping(value="/admin_qna_update_form")
	public String adminQnaUpdateView(QnaVO vo,Model model) {
		
		QnaVO qnaVO = qnaService.getQna(vo.getQseq());
		
		model.addAttribute("qnaVO", qnaVO);
		
		return "admin/qna/qnaUpdate";
	}
	
	@RequestMapping(value="/admin_qna_update_repsave")
	public String adminQnaUpdateRepsave(QnaVO vo,Model model) {
		
		QnaVO qnaVO = qnaService.getQna(vo.getQseq());
		
		qnaVO.setReply(vo.getReply());
		qnaService.updateQna(qnaVO);
		
		model.addAttribute("qnaVO", qnaVO);
		
		return "admin/qna/qnaDetail";
	}
	
	@GetMapping(value="/admin_contract_list")
	public String adminContractListView(Model model) {
		
		List<ContractVO> contractList = cttService.contractList();
		
		model.addAttribute("contractList", contractList);
		
		return "admin/contract/contractList";
	}
	
	@PostMapping(value="/admin_contract_write")
	public String adminContractInsertView() {
		
		return "admin/contract/contractDetail";
	}
	
	// 거래내역 상품명찾기
	@GetMapping(value="/find_product_name")
	public String findProductName() {
		
		return "admin/contract/findProductName";
	}
	
	@PostMapping(value="/find_product_name")
	public String findProductNameAction(@RequestParam(value="product_name",defaultValue="")String name,
										Model model) {
		
		List<ProductVO> productList = productService.selectProductbyName(name);
		
		model.addAttribute("productList", productList);
		
		return "admin/contract/findProductName";
	}
	
	@GetMapping(value="/find_member_name")
	public String findMemberName() {
		
		return "admin/contract/findMemberName";
	}
	
	@PostMapping(value="/find_member_name")
	public String findMemberNameAction(@RequestParam(value="member_name",defaultValue="")String name,
										Model model) {
		
		List<MemberVO> memberList = memberService.listMember(name);
		
		model.addAttribute("memberList", memberList);
		
		return "admin/contract/findMemberName";
	}
	
	@PostMapping(value="/admin_contract_insert")
	public String adminContractInsert(ContractVO vo) {
		
		cttService.insertContract(vo);

		return "redirect:admin_contract_list";
	}
}






