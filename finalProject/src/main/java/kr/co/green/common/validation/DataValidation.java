package kr.co.green.common.validation;

public class DataValidation {
	
	public static Boolean emptyCheck(String data) {
		if(data.isEmpty()) {
			return false;
		} else {
			return true;
		}
	}
	
	// 제목 길이 검사해주는 메소드
	public static Boolean CheckLength(String data, int length) {
		int byteLength = 0;
		
		// 영어 1바이트, 한글 3바이트
		// "asdf"  -->   ['a', 's', 'd', 'f']
		for(char c : data.toCharArray()) {
			// 'a'  --> "a"  --> 
			if(Character.toString(c).matches("[ㄱ-ㅎㅏ-ㅣ가-힣]")) {
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
}









