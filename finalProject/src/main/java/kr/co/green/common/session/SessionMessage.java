package kr.co.green.common.session;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

@Controller
public class SessionMessage {
	
	public String setSessionMessage(String msg,
									String status,
									String path,
									HttpSession session) {
		session.setAttribute("msg", msg);
		session.setAttribute("status", status);
		return "redirect:"+path;
	}
	
}
