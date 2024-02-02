package kr.co.green.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@GetMapping("/admin")
	public String adminPage(){
		return "admin/admin";
	}
	
	@GetMapping("/admin/approveList.do")
	public String cardApproveList(){
		return "admin/cardApprove";
	}
}
