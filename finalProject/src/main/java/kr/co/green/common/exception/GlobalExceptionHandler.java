package kr.co.green.common.exception;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
@RestController
public class GlobalExceptionHandler {

	@ExceptionHandler(value = DataAccessResourceFailureException.class)
	@ResponseBody
	public Map<String, Object> handleDataAccessResourceFailureException (DataAccessResourceFailureException  e) {
		Map<String, Object> resultMap = new HashMap<>();
		if (e.getMessage().equals("서버 오류 또는 입력값이 잘못되었습니다.")) {
			resultMap.put("success", false);
			resultMap.put("redirectUrl", "/common/error");
		}
		return resultMap;
	}
	@ExceptionHandler(value = NullPointerException.class)
	public Object handleNullPointerException (NullPointerException e, HttpServletRequest request) {
		String headerValue = request.getHeader("X-Requested-With");
		Map<String, Object> resultMap = new HashMap<>();
		
		if (headerValue != null && headerValue.equals("XMLHttpRequest")) {
			resultMap.put("success", false);
			resultMap.put("message", e.getMessage());	// 추후 비동기 요청이 왔을 때는 메시지로 띄우도록 수정 예정
			resultMap.put("redirectUrl", "/exception/nullPointerException.do");
			return resultMap;
		}
		else {
			return new ModelAndView("redirect:/exception/nullPointerException.do");
		}
	}
	
//	@ExceptionHandler(value = NullPointerException .class)
//	public Map<String, Object> handleNullPointerException (NullPointerException  e) {
//		Map<String, Object> resultMap = new HashMap<>();
//		if (e.getMessage().equals("예외 발생")) {
//			resultMap.put("success", false);
//			resultMap.put("redirectUrl", "/exception/nullPointerException.do");
//			return resultMap;
//		}
//		return resultMap;
//	}
	
}



