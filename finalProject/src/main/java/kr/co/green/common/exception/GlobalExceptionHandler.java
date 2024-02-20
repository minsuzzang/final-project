package kr.co.green.common.exception;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
@RestController
public class GlobalExceptionHandler {
	
	 private boolean isAjaxRequest(HttpServletRequest request) {
	        String headerValue = request.getHeader("X-Requested-With");
	        return headerValue != null && headerValue.equals("XMLHttpRequest");
	    }
	
	private Object checkRequestType(HttpServletRequest request, String statement, String redirectUrl) {
		Map<String, Object> resultMap = new HashMap<>();

		if (isAjaxRequest(request)) {
			resultMap.put("success", false);
			resultMap.put("message", statement);
			resultMap.put("redirectUrl", redirectUrl);
			return resultMap;
		} else {
			ModelAndView mav = new ModelAndView();
			mav.addObject("statement", statement);
			mav.setViewName(redirectUrl);
			return mav;
		}
	}

	@ExceptionHandler(value = DataAccessResourceFailureException.class)
	public Object handleDataAccessResourceFailureException(DataAccessResourceFailureException e,
			HttpServletRequest request) {		
		return checkRequestType(request, e.getMessage(), "redirect:/exception/dataAccessResourceFailureException");
	}

	@ExceptionHandler(value = NullPointerException.class)
	public Object handleNullPointerException(NullPointerException e, HttpServletRequest request) {
		return checkRequestType(request, e.getMessage(), "redirect:/exception/nullPointerException");
	}

	@ExceptionHandler(value = SQLException.class)
	public Object handleSQLException(SQLException e, HttpServletRequest request) {
		return checkRequestType(request, e.getMessage(), "redirect:/exception/SQLException");
	}

	@ExceptionHandler(value = IllegalArgumentException.class)
	public Object handleIllegalArgumentException(IllegalArgumentException e, HttpServletRequest request) {
		return checkRequestType(request, e.getMessage(), "redirect:/exception/IllegalArgumentException");
	}

}
