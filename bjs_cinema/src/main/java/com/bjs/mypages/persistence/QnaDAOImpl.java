package com.bjs.mypages.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bjs.mypages.domain.QnaVO;

@Repository
public class QnaDAOImpl implements QnaDAO {
	
	@Inject
	private SqlSession session;
	private static String namespace="com.bjs.mappers.mypagesMapper";
	
	@Override
	public void qnaInsert(QnaVO vo) throws Exception {
		session.insert(namespace+".qnaInsert" + vo);
	}

}
