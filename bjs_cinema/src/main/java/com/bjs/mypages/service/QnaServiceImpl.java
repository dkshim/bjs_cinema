package com.bjs.mypages.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bjs.mypages.domain.QnaVO;
import com.bjs.mypages.persistence.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService {
	@Inject
	private QnaDAO dao;

	@Override
	public void qnaRegist(QnaVO vo) throws Exception {
		dao.qnaInsert(vo);
	}
}
