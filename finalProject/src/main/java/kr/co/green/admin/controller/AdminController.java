package kr.co.green.admin.controller;

import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.green.admin.model.dto.AdminDTO;
import kr.co.green.admin.model.service.AdminServiceImpl;
import kr.co.green.common.paging.PageInfo;
import kr.co.green.common.paging.Pagination;

@Controller
public class AdminController {
	@Autowired
	private AdminServiceImpl adminService;

	@GetMapping("/admin")
	public String adminPage(){
		return "admin/admin";
	}
	
	@GetMapping("/admin/approveList.do")
	public String cardApproveList (AdminDTO board, @RequestParam(value="cpage", defaultValue="1") int cpage, Model model, HttpSession session) {

			//전체 게시글 수 구하기
			int listCount = adminService.selectListCount(board);
			int pageLimit = 5; // 페이지 최대
			int boardLimit = 5; //한페이지에 보여지는 글 수
			int row = listCount - (cpage-1) * boardLimit; //삭제해도 땡겨지게
			
			//페이징처리
			PageInfo pi = Pagination.getPageInfo(listCount, cpage, pageLimit, boardLimit);
			
			//목록 불러오기
			List<AdminDTO> list = adminService.selectListAll(pi,board);
			
			//Model에 객체 바인딩
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("row", row);
			
			return "admin/cardApprove";

	}
	
	@PostMapping("/admin/getModalList.do")
	@ResponseBody
	public AdminDTO getModalList(AdminDTO board){	
		AdminDTO result = adminService.getModalList(board);
		//색깔 첫글자 대문자로 + 디자인 마지막숫자만 나오도록
		String color = "the" + String.valueOf(result.getCd_color().charAt(0)).toUpperCase() + result.getCd_color().substring(1, result.getCd_color().length());
		String design = String.valueOf(result.getCd_design().charAt(result.getCd_design().length() - 1));
		result.setCd_color(color);
		result.setCd_design(design);
		
		return result;
	}
	
	@GetMapping("/admin/approveCardApply.do")
	public String approveCardApply(@RequestParam(value="cd_idx") int cd_idx) {
		int result = adminService.approveCardApply(cd_idx);
		return "redirect:/admin/approveList.do";
	}
	
	@GetMapping("/admin/rejectCardApply.do")
	public String rejectCardApply(@RequestParam(value="cd_idx") int cd_idx) {
		int result = adminService.rejectCardApply(cd_idx);
		return "redirect:/admin/approveList.do";
		
	}
	
}
