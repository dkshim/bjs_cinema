package com.bjs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bjs.member.domain.MemberVO;
import com.bjs.mypages.domain.QnaVO;
import com.bjs.mypages.service.MypagesService;

@Controller
@RequestMapping("/mypages/*")
public class MypagesController {
	@Inject
	private MypagesService mpService;

	// qna문의 글 작성 폼 이동
	@RequestMapping(value = "qnaRegist", method = RequestMethod.GET)
	public void qnaRegistGet() throws Exception {
	}

	// qna문의 글 db저장
	@RequestMapping(value = "qnaRegist", method = RequestMethod.POST)
	public String qnaRegistPost(QnaVO vo, Model model) throws Exception {
		if (vo.getQna_title() == "") {
			vo.setQna_title("제목 없음");
		}
		mpService.qnaRegist(vo);
		return "redirect:/mypages/qnaMyList";
	}

	// qna MyList(문의내역 출력)
	@RequestMapping(value = "qnaMyList", method = RequestMethod.GET)
	public String qnaMyList(Model model, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		
		model.addAttribute("qnaMyList", mpService.qnaMyList(vo.getMember_id()));
		return "/mypages/qnaList";
	}

	// qnaRead(상세보기)
	@RequestMapping(value = "qnaRead", method = RequestMethod.GET)
	public void qnaRead(@RequestParam("qna_id") int qna_id, Model model) throws Exception {
		model.addAttribute(mpService.qnaRead(qna_id));
		model.addAttribute("writer", mpService.qnaWriter(qna_id));
	}

	//내 회원정보보기
	@RequestMapping(value="memberInfo", method=RequestMethod.GET)
	public String memberInfo(Model model, HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		MemberVO vo = (MemberVO) session.getAttribute("login");
		int member_id = vo.getMember_id();
		String phone = mpService.memberInfo(member_id).getMember_phone();
		String ssn = mpService.memberInfo(member_id).getMember_ssn();
		String email = mpService.memberInfo(member_id).getMember_email();
		
		model.addAttribute("memberInfo",mpService.memberInfo(member_id));
		
		String phone1 = phone.substring(4, phone.length());
		String phone2[] = phone1.split("-");
		model.addAttribute("phone1",phone2[0]);
		model.addAttribute("phone2",phone2[1]);
		
		String ssn1[] = ssn.split("-");
		model.addAttribute("ssn_y", ssn1[0]);
		model.addAttribute("ssn_m", ssn1[1]);
		model.addAttribute("ssn_d", ssn1[2]);
		
		String email1[] = email.split("@");
		model.addAttribute("email1", email1[0]);
		model.addAttribute("email2", email1[1]);		
		return "/mypages/memberInfo";
	}
	
	//회원정보 수정
	@RequestMapping(value="memberModify", method=RequestMethod.POST)
	public String memberModify(MemberVO vo) throws Exception {
		mpService.memberModify(vo);
		
		return "/main/main";
	}
	
	@RequestMapping(value="memberKindModify", method=RequestMethod.POST)
	public String memberKindModify(MemberVO vo) throws Exception {
		mpService.memberKindModify(vo);
		
		return "redirect:/main/main";
	}
}
