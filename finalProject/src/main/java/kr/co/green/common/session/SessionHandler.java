package kr.co.green.common.session;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SessionHandler {
	
	private final HttpSession session;
	
	@Autowired
	public SessionHandler(HttpSession session) {
		this.session = session;
	}

	//하나의 요소에 대한 세션 값 반환
	public String getSessionAttribute(String attribute) {
		return (String)session.getAttribute(attribute);
	}
	
	//여러개의 요소에 대한 세션 값 반환 (매개변수 List)
	public Map<String, String> getSessionAttribute(List<String> attributes) {
		
		return attributes.stream()
                .collect(Collectors.toMap(
                    attribute -> attribute,
                    attribute -> (String)session.getAttribute(attribute)
                ));
	}
	
	//여러개의 요소에 대한 세션 값 반환 (매개변수 Map)
	public Map<String, String> getSessionAttribute(Map<String, String> attributes) {
		
		return attributes.keySet().stream()
				.collect(Collectors.toMap(
						key -> key,
						key -> (String)session.getAttribute(key)
				));
	}
}
