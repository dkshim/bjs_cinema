package com.bjs.mypages.service;

import java.util.List;

import com.bjs.member.domain.MemberVO;
import com.bjs.mypages.domain.QnaVO;

public interface MypagesService {
	public void qnaRegist(QnaVO vo) throws Exception;
	public List<QnaVO> qnaMyList(int member_id) throws Exception;
	public QnaVO qnaRead(int qna_id) throws Exception;
	public String qnaWriter(int qna_id) throws Exception;
	public MemberVO memberInfo(int member_id) throws Exception;
	public void memberModify(MemberVO vo) throws Exception;
	public void memberKindModify(MemberVO vo) throws Exception;
}
