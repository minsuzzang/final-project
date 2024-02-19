package kr.co.green.common.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/exception")
public class ExceptionController {
	
	private String redirectErrorPage(Model model, String statement) {
		model.addAttribute("statement", statement);
		return "common/error";
	}

	@GetMapping("dataAccessResourceFailureException")
	public String handleDataAccessResourceFailureException(HttpServletRequest request, Model model) {
		return redirectErrorPage(model, "서버 오류 또는 입력값이 잘못되었습니다.");
	}

	@GetMapping("nullPointerException")
	public String handleNullPointerException(HttpServletRequest request, Model model) {
		return redirectErrorPage(model, "입력값을 확인해주세요.");
	}
	
	@GetMapping("SQLException")
	public String handleSQLException(HttpServletRequest request, Model model) {
		return redirectErrorPage(model, "처리 중 문제가 발생했습니다.");
	}
	
	@GetMapping("IllegalArgumentException")
	public String handleIllegalArgumentException(HttpServletRequest request, Model model) {
		return redirectErrorPage(model, "잘못된 입력입니다.");
	}
}
