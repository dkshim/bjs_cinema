package com.bjs.controller;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bjs.login.DTO.LoginDTO;
import com.bjs.member.domain.MemberVO;
import com.bjs.member.service.MemberService;


@Controller
@RequestMapping("/main")
public class MemberController {
	//로깅을 위한 변수
	/*private static final Logger logger = LoggerFactory.getLogger(MemberController.class);*/
	
	@Inject
	private MemberService memberService;
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto){
		
	}
	
	@RequestMapping(value="/loginPost", method=RequestMethod.POST)
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception{
		
		System.out.println(dto.getMember_identify());
		System.out.println(dto.getMember_pwd());

		MemberVO vo = memberService.login(dto);
		
		if( vo == null){
			System.out.println("좋은말 할때 로그인해라.");
			return;
		}
		
		model.addAttribute("memberVO", vo);
		
	}
	
	
	
	//  1) 로그인 화면.
	/*@RequestMapping("login")
	public String login(){
		return "main/login";
		
	}*/
	
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
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
		Object obj = session.getAttribute("login");
		
		if(obj != null){
			MemberVO vo = (MemberVO) obj;
			
			session.removeAttribute("login");
			session.invalidate();
		}
		return "main/logout";
	}
	
	//4-1  회원 가입[GET 방식]
	@RequestMapping(value="/memberRegister" , method= RequestMethod.GET)
	public void registerGET(MemberVO member, Model model)throws Exception{
		System.out.println("register get........");
	}
	
	//4-2  회원 가입[post 방식]
	@RequestMapping(value="/memberRegister", method=RequestMethod.POST)
	public String registPOST(MemberVO member, RedirectAttributes rttr)throws Exception{
		memberService.regist(member);
		System.out.println("register post.........");
		System.out.println(member);
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/main/memberSuccess";
	}
}
