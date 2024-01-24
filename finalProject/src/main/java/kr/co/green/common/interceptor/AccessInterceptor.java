package kr.co.green.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AccessInterceptor implements HandlerInterceptor {
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		/*
		 * // 사용자가 요청할 당시의 주소(http://localhost/free/list.do) String referer =
		 * request.getHeader("referer");
		 * 
		 * // 사용자가 요청한 주소(/free/detail.do) String requestURI = request.getRequestURI();
		 * 
		 * // 서버의 도메인 주소(ex. http://localhost)를 구하기 위한 코드 String serverDomain =
		 * request.getRequestURL().toString(); // http://localhost/free/detail.do String
		 * localServerDomain = serverDomain.replace(requestURI, ""); // http://localhost
		 * 
		 * // 프리 게시판 if(requestURI.equals("/free/detail.do") && (referer == null ||
		 * !referer.startsWith(localServerDomain+"/free/list.do")) ) {
		 * response.sendRedirect("/common/error"); return false; }
		 * 
		 * // 정보 게시판 if(requestURI.equals("/info/editForm.do") && (referer == null ||
		 * !referer.startsWith(localServerDomain+"/info/detail.do")) ) {
		 * response.sendRedirect("/common/error"); return false; }
		 */

		return true;
	}
	
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable ModelAndView modelAndView) throws Exception {
	}
	
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable Exception ex) throws Exception {
	}
}
