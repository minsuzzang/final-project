package kr.co.green.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginCheckInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		/*
		 * HttpSession session = request.getSession(); Integer memberIdx = (Integer)
		 * session.getAttribute("memberIdx");
		 * 
		 * String requestURL = request.getRequestURL().toString();
		 * if(requestURL.equals("http://192.168.56.10/")) { //
		 * if(requestURL.equals("http://localhost/")) { return true; }
		 * 
		 * if(memberIdx == null) { response.sendRedirect("/member/redirect.do"); //
		 * false : 컨트롤러 호출X return false; }
		 */
		
//		true : 컨트롤러 호출
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable ModelAndView modelAndView) throws Exception {
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable Exception ex) throws Exception {
	}
}
