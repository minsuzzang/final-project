package kr.co.green.common.exception;

import java.util.HashMap;
import java.util.Map;

import org.springframework.dao.DataAccessResourceFailureException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@ControllerAdvice
@RestController
public class GlobalExceptionHandler {

	@ExceptionHandler(value = DataAccessResourceFailureException .class)
	@ResponseBody
	public Map<String, Object> handleDataAccessResourceFailureException (DataAccessResourceFailureException  e) {
		Map<String, Object> resultMap = new HashMap<>();
		if (e.getMessage().equals("서버 오류 또는 입력값이 잘못되었습니다.")) {
			resultMap.put("success", false);
			resultMap.put("redirectUrl", "/common/error");
		}
		return resultMap;
	}
	
	@ExceptionHandler(value = NullPointerException .class)
	@ResponseBody
	public Map<String, Object> handleNullPointerException (NullPointerException  e) {
		Map<String, Object> resultMap = new HashMap<>();
		if (e.getMessage().equals("예외 발생")) {
			resultMap.put("success", false);
			resultMap.put("redirectUrl", "/exception/nullPointerException.do");
			return resultMap;
		}
		return resultMap;
	}
//	@ExceptionHandler(value = NullPointerException.class)
//	@ResponseBody
//	public Map<String, Object> handleNullPointerException(NullPointerException e, HttpServletRequest request) {
//	    String headerValue = request.getHeader("X-Requested-With");  // 비동기 요청인지 확인하기 위해 헤더 정보를 확인합니다.
//	    Map<String, Object> resultMap = new HashMap<>();
//
//	    if (headerValue != null && headerValue.equals("XMLHttpRequest")) {
//	        // 비동기 요청인 경우 처리할 코드 작성
//	        resultMap.put("success", false);
//	        resultMap.put("message", "값을 입력해 주세요");
//	        // 추가적인 비동기 처리 코드 작성
//	    } else {
//	        // 동기 요청인 경우 처리할 코드 작성
//	        resultMap.put("success", false);
//	        resultMap.put("message", "널 포인터 익셉션 발생 - 동기 요청");
//	        // 추가적인 동기 처리 코드 작성
//	    }
//
//	    return resultMap;
//	}
	
	
	

}









