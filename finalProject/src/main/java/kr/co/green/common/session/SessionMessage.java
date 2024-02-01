package kr.co.green.common.session;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

@Controller
public class SessionMessage {

	public String setSessionMessage(String msg, String path, HttpSession session) {
		session.setAttribute("msg", msg);
		return "redirect:"+path;
	}
	
}
