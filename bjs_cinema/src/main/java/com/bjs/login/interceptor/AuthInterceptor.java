package com.bjs.login.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception{
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("login") == null){
			response.sendRedirect("/main/login");
			//가려고 했던 곳으로 못가고 로그인창으로 이동
			return false;
		}
		//이동가능
		return true;
	}
	
	private void saveDest(HttpServletRequest req){
		
		String uri = req.getRequestURI();
		String query = req.getQueryString();
		
		if(query == null || query.equals("null")) {
			query = "";
		} else {
			query = "?" + query;
		}
		
		if(req.getMethod().equals("GET")){
			req.getSession().setAttribute("dest", uri + query);
		}
	}

}
