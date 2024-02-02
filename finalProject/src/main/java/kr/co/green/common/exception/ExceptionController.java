package kr.co.green.common.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exception")
public class ExceptionController {

	@GetMapping("dataAccessResourceFailureException.do")
	public String redirectDataAccessResourceFailureException(HttpServletRequest request, Model model) {
		model.addAttribute("statement", "서버 오류 또는 입력값이 잘못되었습니다");
		return "common/error";
	}

	@GetMapping("nullPointerException.do")
	public String redirectNullPointerException(HttpServletRequest request, Model model) {
		model.addAttribute("statement", "입력값을 확인해주세요");
		return "common/error";
	}
}
