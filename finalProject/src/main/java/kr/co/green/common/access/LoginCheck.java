package kr.co.green.common.access;

import javax.servlet.http.HttpSession;

public class LoginCheck {
	public static boolean loginCheck(HttpSession session) {
		Integer memberIdx = (Integer) session.getAttribute("memberIdx");
		
		if(memberIdx == null) {
			return false;
		} else {
			return true;
		}
		
	}
}
