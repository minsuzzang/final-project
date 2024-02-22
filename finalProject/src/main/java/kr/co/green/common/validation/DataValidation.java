package kr.co.green.common.validation;

import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class DataValidation {
	public static Boolean emptyCheck(String data) { 
		if(data.isEmpty()) {
			return false;
		} else {
			return true;
		}
	}
	
	public static Boolean CheckLength(String data, int length) {
		int byteLength = 0;
		
		//영어 1byte, 한글 3byte
		//"asdf -> ['a', 's', 'd', 'f']
		for(char c : data.toCharArray()) {
			if (Character.toString(c).matches("[ㄱ-ㅎㅏ-ㅣ가-힣]")) {
				byteLength += 3;
			} else {
				byteLength += 1;
			}
		}
		
		if(byteLength < length) {
			return true;
		} else {
			return false;
		}
	}
	
	public void checkParameter(Map<?, ?> parameterMap) {
		if(parameterMap.get("cd_design").equals("")) throw new IllegalArgumentException("디자인을 선택해주세요.");
		if(parameterMap.get("m_english_first_name").equals("")) throw new IllegalArgumentException("이름을 입력해주세요.");
		if(parameterMap.get("m_english_last_name").equals("")) throw new IllegalArgumentException("성을 입력해주세요.");
		if(parameterMap.get("m_address").equals("")) throw new IllegalArgumentException("주소를 입력해주세요.");
		if(parameterMap.get("m_detailed_address").equals("")) throw new IllegalArgumentException("상세 주소를 입력해주세요.");
	}
	
}
