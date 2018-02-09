package com.bjs.controller;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


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
	
	//1-1 로그인 [GET]
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") LoginDTO dto){
		
	}
	
	//1-2 로그인[POST]
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
	
	
	// 3) 로그아웃 처리
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response ,HttpSession session) throws Exception{
		System.out.println("로그아웃이 되어라!!!!");
		
		Object obj = session.getAttribute("login");
		
		if(obj != null){
		MemberVO vo = (MemberVO) obj;	
			
			session.removeAttribute("login");
			session.invalidate();
		}
			return "redirect:/";
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
