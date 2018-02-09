package com.bjs.login.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	private static final String LOGIN = "login";

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mav )throws Exception{
		System.out.println("postint");
		HttpSession session = request.getSession();
		//modelMap에 model객체가지고 온다.
		ModelMap modelMap = mav.getModelMap();
		Object memberVO = modelMap.get("memberVO");
		
		//memberVO가 null이 아니라는 것은 회원이라는 것.
		if(memberVO != null){
			
			session.setAttribute(LOGIN, memberVO);
			//response.sendRedirect("/");
			
			Object dest = session.getAttribute("dest");
			
			response.sendRedirect(dest != null ? (String)dest:"/");
			
		}else{
			response.sendRedirect("/main/login");
		}
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception{
		System.out.println("preint");
		HttpSession session = request.getSession();
		
		//로그인 상태인데 또 로그인을 하려고 접근했을 경우.
		if(session.getAttribute(LOGIN) != null){
			session.removeAttribute(LOGIN);
		}
		
		return true;
		
	}
	
}


