package kr.co.green.common.exception;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class DataBaseAccessResult {
	// 한 번의 DB접근에 대한 결과값을 반환해주는 클래스.
	
	private Map<String, Object> createResultMap(boolean success, String redirectUrl) {
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("success", success);
		resultMap.put("redirectUrl", redirectUrl);

		return resultMap;
	}
	
	public Map<String, Object> handleDataAccessSuccess(String url) {
		return createResultMap(true, url);
	}

	public Map<String, Object> handleDataAccessFailure() {
		return createResultMap(false, "/exception/dataAccessResourceFailureException.do");
	}
	
}
