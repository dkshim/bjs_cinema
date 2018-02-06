package com.bjs.controller;



import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bjs.member.domain.MemberVO;
import com.bjs.member.service.MemberService;

@Controller
//모든 맵핑은 /member/를 상속
@RequestMapping("/main/*")
public class MemberController {
	//로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService memberService;
	
	//  1) 로그인 화면.
	@RequestMapping("login")
	public String login(){
		return "main/login";
		
	}
	
	//  2) 로그인 처리
	@RequestMapping("loginCheck")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session){
		boolean result = memberService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView();
		// 로그인 성공
		if(result == true){
			mav.setViewName("main");
			mav.addObject("msg", "success");
		}else{
			mav.setViewName("main/login");
			mav.addObject("msg", "failure");
		}
		return mav;
	}
	
	// 3) 로그아웃 처리
	@RequestMapping("logout")
	public ModelAndView logout(HttpSession session){
		memberService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/login");
		mav.addObject("msg", "logout");
		return mav;
	}
}
