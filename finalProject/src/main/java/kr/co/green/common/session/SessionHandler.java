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

	public void setSessionAttribute(String attributeName, String attributeValue) {
		session.setAttribute(attributeName, attributeValue);
	}
	
	//하나의 요소에 대한 세션 값 반환
	public String getSessionAttribute(String attribute) {
		return (String)session.getAttribute(attribute);
	}
	
	//여러개의 요소에 대한 세션 값 반환 (매개변수 List)
	public Map<String, Object> getSessionAttribute(List<String> attributes) {
		
		return attributes.stream()
                .collect(Collectors.toMap(
                    attribute -> attribute,
                    attribute -> (String)session.getAttribute(attribute)
                ));
	}
	
	//여러개의 요소에 대한 세션 값 반환 (매개변수 Map)
	public Map<String, Object> getSessionAttribute(Map<String, String> attributes) {
		
		return attributes.keySet().stream()
				.collect(Collectors.toMap(
						key -> key,
						key -> (String)session.getAttribute(key)
				));
	}
	
	//세션 요소 제거
	public void removeSessionAttribute(String attribute) {
		session.removeAttribute(attribute);
	}
	
}




