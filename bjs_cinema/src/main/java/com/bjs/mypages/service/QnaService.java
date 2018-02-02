package com.bjs.mypages.service;

import java.util.List;

import com.bjs.mypages.domain.QnaVO;

public interface QnaService {
	public void qnaRegist(QnaVO vo) throws Exception;
	public List<QnaVO> qnaMyList(int member_id) throws Exception;
	public QnaVO qnaRead(int qna_id) throws Exception;
	public String qnaWriter(int qna_id) throws Exception;
}
