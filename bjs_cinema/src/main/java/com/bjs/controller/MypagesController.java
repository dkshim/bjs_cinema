package com.bjs.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	public String qnaMyList(Model model) throws Exception {
		QnaVO vo = new QnaVO();
		int member_id = 2;
		model.addAttribute("qnaMyList", mpService.qnaMyList(member_id));
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
	public void memberInfo(Model model) throws Exception {
		int member_id = 4;
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
		
	}
}
