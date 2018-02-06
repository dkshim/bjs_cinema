package com.bjs.mypages.persistence;

import java.util.List;

import com.bjs.member.domain.MemberVO;
import com.bjs.mypages.domain.QnaVO;

public interface MypagesDAO {
	public void qnaInsert(QnaVO vo) throws Exception;
	public List<QnaVO> qnaMyList(int member_id) throws Exception;
	public QnaVO qnaSelect(int qna_id) throws Exception;
	public String qnaWriter(int qna_id) throws Exception;
	public MemberVO memberInfo(int member_id) throws Exception;
}
