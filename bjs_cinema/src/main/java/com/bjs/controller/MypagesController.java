package com.bjs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bjs.mypages.domain.QnaVO;
import com.bjs.mypages.service.QnaService;

@Controller
@RequestMapping("/mypages/*")
public class MypagesController {
	@Inject
	private QnaService qService;
	
	//qna문의 글 작성 폼 이동
	@RequestMapping(value="qnaRegist", method=RequestMethod.GET)
	public void qnaRegistGet() throws Exception {		
	}
	
	//qna문의 글 db저장
	@RequestMapping(value="qnaRegist", method=RequestMethod.POST)
	public void qnaRegistPost(QnaVO vo, Model model) throws Exception {
		System.out.println(vo.toString());
		qService.qnaRegist(vo);
		System.out.println("Db저장완료");
	}
	
	//qna MyList
	@RequestMapping(value="qnaMyList", method=RequestMethod.GET)
	public String qnaMyList(Model model) throws Exception {
		QnaVO vo = new QnaVO();
		int member_id=4;
		//member_id = vo.getMember_id(); 
		model.addAttribute("qnaMyList", qService.qnaMyList(member_id));
		return "mypages/qnaList";
	}
	
}
