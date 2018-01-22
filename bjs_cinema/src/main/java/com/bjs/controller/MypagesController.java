package com.bjs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bjs.mypages.domain.QnaVO;
import com.bjs.mypages.service.QnaService;

@Controller
@RequestMapping("/mypages/*")
public class MypagesController {
	@Inject
	private QnaService qService;
	
	@RequestMapping(value="qnaRegist", method=RequestMethod.GET)
	public void qnaRegistGet() throws Exception {		
	}

	@RequestMapping(value="qnaRegist", method=RequestMethod.POST)
	public void qnaRegistPost(QnaVO vo, Model model) throws Exception {
		System.out.println(vo.toString());
		qService.qnaRegist(vo);
		System.out.println("Db저장완료");
	}
	
}
