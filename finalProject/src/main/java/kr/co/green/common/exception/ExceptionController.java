package kr.co.green.common.exception;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/exception")
public class ExceptionController {
	
	private String redirectErrorPage(ModelAndView mav, String statement) {
		mav.addObject("statement", statement);
	    mav.setViewName("common/error");
	    return "common/error";
	}

	@GetMapping("dataAccessResourceFailureException")
	public String handleDataAccessResourceFailureException(HttpServletRequest request, ModelAndView mav) {
		return redirectErrorPage(mav, (String)mav.getModel().get("statement"));
	}

	@GetMapping("nullPointerException")
	public String handleNullPointerException(HttpServletRequest request, ModelAndView mav) {
		return redirectErrorPage(mav, (String)mav.getModel().get("statement"));
	}
	
	@GetMapping("SQLException")
	public String handleSQLException(HttpServletRequest request, ModelAndView mav) {
		return redirectErrorPage(mav, (String)mav.getModel().get("statement"));
	}
	
	@GetMapping("IllegalArgumentException")
	public String handleIllegalArgumentException(HttpServletRequest request, ModelAndView mav) {
		return redirectErrorPage(mav, (String)mav.getModel().get("statement"));
	}
}
