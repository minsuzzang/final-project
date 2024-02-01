package kr.co.green.common.validation;

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
}
