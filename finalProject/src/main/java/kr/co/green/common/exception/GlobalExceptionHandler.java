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

	@ExceptionHandler(value = DataAccessResourceFailureException.class)
	public Object handleDataAccessResourceFailureException (DataAccessResourceFailureException e, HttpServletRequest request) {
		String headerValue = request.getHeader("X-Requested-With");
		Map<String, Object> resultMap = new HashMap<>();
		
		if (headerValue != null && headerValue.equals("XMLHttpRequest")) {
			resultMap.put("success", false);
			resultMap.put("message", e.getMessage());
			resultMap.put("redirectUrl", "/exception/dataAccessResourceFailureException");
			return resultMap;
		}
		else {
			return new ModelAndView("redirect:/exception/nullPointerException");
		}
	}
	
	@ExceptionHandler(value = NullPointerException.class)
	public Object handleNullPointerException (NullPointerException e, HttpServletRequest request) {
		String headerValue = request.getHeader("X-Requested-With");
		Map<String, Object> resultMap = new HashMap<>();
		
		if (headerValue != null && headerValue.equals("XMLHttpRequest")) {
			resultMap.put("success", false);
			resultMap.put("message", e.getMessage());	
			resultMap.put("redirectUrl", "/exception/nullPointerException");
			return resultMap;
		}
		else {
			return new ModelAndView("redirect:/exception/nullPointerException");
		}
	}
	
	@ExceptionHandler(value = SQLException.class)
	public Object handleSQLException (SQLException e, HttpServletRequest request) {
		String headerValue = request.getHeader("X-Requested-With");
		Map<String, Object> resultMap = new HashMap<>();
		
		if (headerValue != null && headerValue.equals("XMLHttpRequest")) {
			resultMap.put("success", false);
			resultMap.put("message", e.getMessage());	
			resultMap.put("redirectUrl", "/exception/SQLException");
			return resultMap;
		}
		else {
			return new ModelAndView("redirect:/exception/SQLException");
		}
	}
	
}



