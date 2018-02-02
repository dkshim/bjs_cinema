package com.bjs.mypages.persistence;

import java.util.List;

import com.bjs.mypages.domain.QnaVO;

public interface QnaDAO {
	public void qnaInsert(QnaVO vo) throws Exception;
	public List<QnaVO> qnaMyList(int member_id) throws Exception;
	public QnaVO qnaSelect(int qna_id) throws Exception;
	public String qnaWriter(int qna_id) throws Exception;
}
