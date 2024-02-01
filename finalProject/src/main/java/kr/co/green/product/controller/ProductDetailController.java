package kr.co.green.product.controller;

import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.green.member.model.dto.MemberDTO;
import kr.co.green.member.model.service.MemberServiceImpl;
import kr.co.green.product.model.dto.ProductDTO;
import kr.co.green.product.model.service.ProductServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductDetailController {
	@Autowired
	private ProductServiceImpl productService;
	@Autowired
	private MemberServiceImpl memberService;
	
	@GetMapping("/list.do")
	public String productList(){
		return "product/product";
	}
	
	@GetMapping("/result.do")
	public String productResult(@RequestParam(value="idx")int p_idx, Model model){
		ProductDTO product = productService.productDetail(p_idx);
		if(!Objects.isNull(product)) {
			model.addAttribute("product", product);
			return "product/productResult";
		} else {
			return "common/error";
		}
	}
	
	@GetMapping("/detail.do")
	public String productDetail(@RequestParam(value="idx")int p_idx, Model model, HttpSession session) {
		ProductDTO product = productService.productDetail(p_idx);
		MemberDTO member = memberService.memberDetail((int) session.getAttribute("m_idx"));
		if(!Objects.isNull(product)) {
			model.addAttribute("product", product);
			model.addAttribute("member", member);
			return "product/productDetail";
		} else {
			return "common/error";
		}
	}
	
}
