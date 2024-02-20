package kr.co.green.purchase.controller;

import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.green.member.model.service.MemberServiceImpl;
import kr.co.green.product.model.service.ProductServiceImpl;
import kr.co.green.purchase.model.dto.PurchaseDTO;
import kr.co.green.purchase.model.service.PurchaseServiceImpl;

@Controller
@RequestMapping("/purchase")
public class PurchaseController {
	@Autowired
	private PurchaseServiceImpl purchaseService;
	@Autowired
	private ProductServiceImpl productService;
	@Autowired
	private MemberServiceImpl memberService;
	
	
	@PostMapping("history.do")
	public String purchaseHistory(PurchaseDTO purchase, HttpSession session) {
		int result = purchaseService.purchaseHistory(purchase);
		return "redirect:/product/list.do";
	}
	
	@PostMapping("/cardDetail.do")
	@ResponseBody
	public List<PurchaseDTO> cardDetail(PurchaseDTO purchase) {
		List<PurchaseDTO> result = purchaseService.cardDetail(purchase);
		return result;
	}
	
	@PostMapping("/payment.do")
	@ResponseBody
	public String payment(PurchaseDTO purchase, Model model) {
		PurchaseDTO result = purchaseService.payment(purchase);

		if(!Objects.isNull(result)) {
			return "success";
		}else {
			return "failed";			
		}
	}
	
	
	
	
	
	
}
