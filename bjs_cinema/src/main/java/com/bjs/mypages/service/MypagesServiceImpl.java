package com.bjs.mypages.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bjs.member.domain.MemberVO;
import com.bjs.mypages.domain.QnaVO;
import com.bjs.mypages.persistence.MypagesDAO;

@Service
public class MypagesServiceImpl implements MypagesService {
	@Inject
	private MypagesDAO dao;

	@Override
	public void qnaRegist(QnaVO vo) throws Exception {
		dao.qnaInsert(vo);
	}

	@Override
	public List<QnaVO> qnaMyList(int member_id) throws Exception {
		return dao.qnaMyList(member_id);
	}

	@Override
	public QnaVO qnaRead(int qna_id) throws Exception {
		return dao.qnaSelect(qna_id);
	}

	@Override
	public String qnaWriter(int qna_id) throws Exception {
		return dao.qnaWriter(qna_id);
	}

	@Override
	public MemberVO memberInfo(int member_id) throws Exception {
		return dao.memberInfo(member_id);
	}
}
