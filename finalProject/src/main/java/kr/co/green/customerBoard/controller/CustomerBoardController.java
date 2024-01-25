package kr.co.green.customerBoard.controller;

import java.io.IOException;
import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.green.common.paging.PageInfo;
import kr.co.green.common.paging.Pagination;
import kr.co.green.common.validation.DataValidation;
import kr.co.green.customerBoard.dto.CustomerBoardDTO;
import kr.co.green.customerBoard.service.CustomerBoardServiceImpl;

@Controller
@RequestMapping("/customerboard")
public class CustomerBoardController {
	
	@Autowired
	private CustomerBoardServiceImpl customerboardService;
	
	// localhost/customerboard/list.do
	@GetMapping("/list.do")
	public String customerboardList (CustomerBoardDTO board, @RequestParam(value="cpage", defaultValue="1") int cpage, Model model, HttpSession session) {

			//전체 게시글 수 구하기
			int listCount = customerboardService.selectListCount(board);
			int pageLimit = 5; // 페이지 최대
			int boardLimit = 5; //한페이지에 보여지는 글 수
			int row = listCount - (cpage-1) * boardLimit; //삭제해도 땡겨지게
			
			//페이징처리
			PageInfo pi = Pagination.getPageInfo(listCount, cpage, pageLimit, boardLimit);
			
			//목록 불러오기
			List<CustomerBoardDTO> list = customerboardService.selectListAll(pi,board);
			
			for(CustomerBoardDTO item : list) {
				String indate = item.getCb_in_date().substring(0,10);
				item.setCb_in_date(indate);
			}
			
//			String msg = (String) session.getAttribute("msg");
//			String status = (String) session.getAttribute("status");
			
			//Model에 객체 바인딩
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("row", row);
//			model.addAttribute("msg", msg);
//			model.addAttribute("status", status);

			session.setAttribute("action", "/customerboard/list.do");
//			session.removeAttribute("msg");
//			session.removeAttribute("status");
			
			//포워딩, 뷰리졸버가 경로를 완성시켜줌(servlet-context.xml)
			return "userService/userService";

	}
	
	@GetMapping("enrollForm.do")
	public String enrollForm() {
		return "userService/userServiceEnroll";
	}
	
	@PostMapping("enroll.do")
  public String customerboardEnroll(CustomerBoardDTO board, HttpSession session) {

//		board.setM_idx((String)session.getAttribute("m_name"));
//		board.setM_name((String)session.getAttribute("m_idx"));
		board.setM_name("김재서프");
		board.setM_idx(1);

		//제목 길이 검사
		boolean titleLengthCheck = DataValidation.CheckLength(board.getCb_title(), 150);
		//제목이 비어있는지 검사
		boolean titleEmptyCheck = DataValidation.emptyCheck(board.getCb_title());
		
		int result = customerboardService.enrollBoard(board);
			
		if(result>0) {
			return "redirect:/customerboard/list.do";
		} else {
			return "common/errorPage";
		}
			
	}
	
	@GetMapping("/detail.do")
	public String detailBoard(@RequestParam(value="idx") int cb_idx, Model model, HttpServletRequest request) {

		CustomerBoardDTO result = customerboardService.detailBoard(cb_idx);
		
		if(!Objects.isNull(result)) {
			model.addAttribute("board", result);
			return "userService/userServiceDetail";

		} else { 
			return "common/error";

		}
		
	}
	
	@GetMapping("/editForm.do")
	public String editFormBoard(@RequestParam(value="idx") int cb_idx, Model model) {
		
		CustomerBoardDTO result = customerboardService.editFormBoard(cb_idx);
		
		if(!Objects.isNull(result)) {
			model.addAttribute("board", result);
			return "userService/userServiceUpdate";
		} else {
			return "common/error";
		}
	}
	

	@PostMapping("/edit.do")
	public String editBoard(CustomerBoardDTO board,  HttpSession session) {
		String getWriter = customerboardService.selectWriter(board.getCb_idx()); //게시글 작성자
		String loginWriter = (String) session.getAttribute("m_name"); //로그인한 유저
		
		//제목 길이 검사
		boolean titleLengthCheck = DataValidation.CheckLength(board.getCb_title(), 150);
		//제목이 비어있는지 검사
		boolean titleEmptyCheck = DataValidation.emptyCheck(board.getCb_title());
		
		int result = 0;
		result = customerboardService.editBoard(board);
		if(result == 1 ) {
			return "redirect:/customerboard/list.do";
		} else {
			return "redirect:/customerboard/list.do";	
		}
			
	}
	
	@GetMapping("/delete.do")
	public String deleteBoard(int cb_idx, HttpSession session) {
//		String getWriter = customerboardService.selectWriter(cb_idx); //게시글 작성자
//		String loginWriter = (String) session.getAttribute("m_name"); //로그인한 유저
		String getWriter = "재섭쟝";
		String loginWriter = "재섭쟝";
		
		int result = 0;

		result = customerboardService.deleteBoard(cb_idx);	
		//삭제가 성공하면
		if(result == 1) {
			return "redirect:/customerboard/list.do";
		} else {
			return "redirect:/customerboard/list.do";
		}	
	}
	
	
}
