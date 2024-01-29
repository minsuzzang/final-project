package kr.co.green.notice.controller;

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
import kr.co.green.notice.model.dto.NoticeDTO;
import kr.co.green.notice.model.service.NoticeServiceImpl;

@Controller
@RequestMapping("/notice")
public class NoticeController {
	private static final String path = "notice\\";
	@Autowired
	private NoticeServiceImpl noticeService;
	@Autowired
	private SessionMessage sessionMessage;
	
	// localhost/notice/list.do
	@GetMapping("/list.do")
	public String noticeList (NoticeDTO board, @RequestParam(value="cpage", defaultValue="1") int cpage, Model model, HttpSession session) {

			//전체 게시글 수 구하기
			int listCount = noticeService.selectListCount(board);
			int pageLimit = 5; // 페이지 최대
			int boardLimit = 5; //한페이지에 보여지는 글 수
			int row = listCount - (cpage-1) * boardLimit; //삭제해도 땡겨지게
			
			//페이징처리
			PageInfo pi = Pagination.getPageInfo(listCount, cpage, pageLimit, boardLimit);
			
			//목록 불러오기
			List<NoticeDTO> list = noticeService.selectListAll(pi,board);
				
			//Model에 객체 바인딩
			model.addAttribute("list", list);
			model.addAttribute("pi", pi);
			model.addAttribute("row", row);
			model.addAttribute("msg", session.getAttribute("msg"));
			session.removeAttribute("msg");

			//포워딩, 뷰리졸버가 경로를 완성시켜줌(servlet-context.xml)
			return "notice/notice";

	}
	
	@GetMapping("enrollForm.do")
	public String enrollForm() {
		return "notice/noticeEnroll";
	}
	
	@PostMapping("enroll.do")
  public String noticeEnroll(NoticeDTO board, HttpSession session) {
		board.setM_idx((int)session.getAttribute("m_idx")); //로그인한 유저
		String adminCheck = (String)session.getAttribute("m_type");
		

		//제목 길이 검사
		boolean titleLengthCheck = DataValidation.CheckLength(board.getN_title(), 100);
		//제목이 비어있는지 검사
		boolean titleEmptyCheck = DataValidation.emptyCheck(board.getN_title());

		if(adminCheck.equals("ADMIN")) {
			
			if(titleLengthCheck && titleEmptyCheck) {
				int result = noticeService.enrollBoard(board);	
				if(result>0) {
					return "redirect:/notice/list.do";
				} else {
					return "common/error";
				}			
			} else if(!titleLengthCheck) {
				return sessionMessage.setSessionMessage("제목이 너무 깁니다.","/notice/list.do", session);
			} else if(!titleEmptyCheck) {
				return sessionMessage.setSessionMessage("제목을 입력해주세요","/notice/list.do", session);
			} else {
				return sessionMessage.setSessionMessage("에러발생!", "/notice/list.do", session);
			}
		} else {
			return sessionMessage.setSessionMessage("관리자만 작성 할 수 있습니다.", "/notice/list.do", session);
		}
		
			
	}
	
	@GetMapping("/detail.do")
	public String detailBoard(@RequestParam(value="idx") int n_idx, Model model, HttpServletRequest request) {

		NoticeDTO result = noticeService.detailBoard(n_idx);
		
		String indate = result.getN_in_date().substring(0,10);
		result.setN_in_date(indate);
			
		
		if(!Objects.isNull(result)) {
			model.addAttribute("board", result);
			return "notice/noticeDetail";

		} else { 
			return "common/error";

		}
		
	}
	
	@GetMapping("/editForm.do")
	public String editFormBoard(@RequestParam(value="idx") int n_idx, Model model) {
		
		NoticeDTO result = noticeService.editFormBoard(n_idx);
		
		String indate = result.getN_in_date().substring(0,10);
		result.setN_in_date(indate);
		
		if(!Objects.isNull(result)) {
			model.addAttribute("board", result);
			return "notice/noticeUpdate";
		} else {
			return "common/error";
		}
		
		
	}
	

	@PostMapping("/edit.do")
	public String editBoard(NoticeDTO board,  HttpSession session) {
		board.setM_idx((int)session.getAttribute("m_idx")); //로그인한 유저
		String adminCheck = (String)session.getAttribute("m_type");
		
		//제목 길이 검사
		boolean titleLengthCheck = DataValidation.CheckLength(board.getN_title(), 100);
		//제목이 비어있는지 검사
		boolean titleEmptyCheck = DataValidation.emptyCheck(board.getN_title());
		
		if(adminCheck.equals("ADMIN")) {
			if(titleLengthCheck && titleEmptyCheck) {
				int result = noticeService.editBoard(board);	
				if(result == 1 ) {
					return "redirect:/notice/list.do";
				} else {
					return "redirect:/notice/list.do";	
				}	
			} else if(!titleLengthCheck) {
				return sessionMessage.setSessionMessage("제목이 너무 깁니다.","/notice/list.do", session);
			} else if(!titleEmptyCheck) {
				return sessionMessage.setSessionMessage("제목을 입력해주세요","/notice/list.do", session);
			} else {
				return sessionMessage.setSessionMessage("에러발생!", "/notice/list.do", session);
			}
			
		} else {
			return sessionMessage.setSessionMessage("관리자만 수정 할 수 있습니다.", "/notice/list.do", session);
		}
		
			
	}
	
	@GetMapping("/delete.do")
	public String deleteBoard(@RequestParam(value="idx") int idx, HttpSession session) {

		String adminCheck = (String)session.getAttribute("m_type");
		
		if(adminCheck.equals("ADMIN")) {
			int result = 0;
			result = noticeService.deleteBoard(idx);	
			//삭제가 성공하면
			if(result == 1) {
				return "redirect:/notice/list.do";
			} else {
				return "redirect:/notice/list.do";
			}	
		} else {
			return sessionMessage.setSessionMessage("관리자만 삭제 할 수 있습니다.", "/notice/list.do", session);
		}
	}
	
	
}
