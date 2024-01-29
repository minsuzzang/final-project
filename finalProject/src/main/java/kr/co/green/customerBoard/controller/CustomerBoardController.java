package kr.co.green.customerBoard.controller;

import java.util.List;
import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.green.common.paging.PageInfo;
import kr.co.green.common.paging.Pagination;
import kr.co.green.common.session.SessionMessage;
import kr.co.green.common.validation.DataValidation;
import kr.co.green.customerBoard.dto.CustomerBoardDTO;
import kr.co.green.customerBoard.service.CustomerBoardServiceImpl;

@Controller
@RequestMapping("/customerboard")
public class CustomerBoardController {
	private static final String path = "customerboard\\";
	@Autowired
	private CustomerBoardServiceImpl customerboardService;
	@Autowired
	private SessionMessage sessionMessage;
	
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
			

			
			//Model에 객체 바인딩
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("row", row);
			model.addAttribute("msg", session.getAttribute("msg"));
			session.removeAttribute("msg");
			
			//포워딩, 뷰리졸버가 경로를 완성시켜줌(servlet-context.xml)
			return "userService/userService";

	}
	
	@GetMapping("enrollForm.do")
	public String enrollForm() {
		return "userService/userServiceEnroll";
	}
	
	@PostMapping("enroll.do")
  public String customerboardEnroll(CustomerBoardDTO board, HttpSession session) {

		board.setM_idx((int)session.getAttribute("m_idx"));
		board.setM_name((String)session.getAttribute("m_name"));

		//제목 길이 검사
		boolean titleLengthCheck = DataValidation.CheckLength(board.getCb_title(), 100);
		//제목이 비어있는지 검사
		boolean titleEmptyCheck = DataValidation.emptyCheck(board.getCb_title());
		
		if(titleLengthCheck && titleEmptyCheck) {
			
			int result = customerboardService.enrollBoard(board);
			
			if(result>0) {
				return "redirect:/customerboard/list.do";
			} else {
				return "common/error";
			}
		} else if(!titleLengthCheck) {
			return sessionMessage.setSessionMessage("제목이 너무 깁니다.","/customerboard/list.do", session);
		} else if(!titleEmptyCheck) {
			return sessionMessage.setSessionMessage("제목을 입력해주세요","/customerboard/list.do", session);
		} else {
			return sessionMessage.setSessionMessage("에러발생!", "/customerboard/list.do", session);
		}
			
	}
	
	@GetMapping("/detail.do")
	public String detailBoard(@RequestParam(value="idx") int cb_idx, Model model, HttpServletRequest request) {

		CustomerBoardDTO result = customerboardService.detailBoard(cb_idx);
		
		String indate = result.getCb_in_date().substring(0,10);
		result.setCb_in_date(indate);
		
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
		
		String indate = result.getCb_in_date().substring(0,10);
		result.setCb_in_date(indate);
		
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
		
		if(getWriter.equals(loginWriter)) {
			if(titleLengthCheck && titleEmptyCheck) {
				int result = 0;
				result = customerboardService.editBoard(board);
				if(result == 1 ) {
					return "redirect:/customerboard/list.do";
				} else {
					return "redirect:/customerboard/list.do";	
				}
			} else if(!titleLengthCheck) {
				return sessionMessage.setSessionMessage("제목이 너무 깁니다.","/customerboard/list.do", session);
			} else if(!titleEmptyCheck) {
				return sessionMessage.setSessionMessage("제목을 입력해주세요","/customerboard/list.do", session);
			} else {
				return sessionMessage.setSessionMessage("에러발생!", "/customerboard/list.do", session);
			}
		} else {
			return sessionMessage.setSessionMessage("작성자 본인만 수정 할 수 있습니다.", "/customerboard/list.do", session);
		}
		
	}
	
	@GetMapping("/delete.do")
	public String deleteBoard(@RequestParam(value="idx") int idx, HttpSession session) {
		String getWriter = customerboardService.selectWriter(idx); //게시글 작성자
		String loginWriter = (String) session.getAttribute("m_name"); //로그인한 유저
		
		if(getWriter.equals(loginWriter)) {
			int result = customerboardService.deleteBoard(idx);	
			//삭제가 성공하면
			if(result == 1) {
				return "redirect:/customerboard/list.do";
			} else {
				return "redirect:/customerboard/list.do";
			}	
		} else {
			return sessionMessage.setSessionMessage("작성자 본인만 삭제 할 수 있습니다.", "/customerboard/list.do", session);
		}
		
		
		
	}
	
	
}
