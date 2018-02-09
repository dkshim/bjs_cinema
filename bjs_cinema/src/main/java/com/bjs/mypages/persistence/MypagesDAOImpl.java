package com.bjs.mypages.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bjs.member.domain.MemberVO;
import com.bjs.mypages.domain.QnaVO;

@Repository
public class MypagesDAOImpl implements MypagesDAO {
	
	@Inject
	private SqlSession session;
	private static String namespace="com.bjs.mappers.mypagesMapper";
	
	@Override
	public void qnaInsert(QnaVO vo) throws Exception {
		session.insert(namespace+".qnaInsert", vo);
	}

	@Override
	public List<QnaVO> qnaMyList(int member_id) throws Exception {
		return session.selectList(namespace+".qnaMyList", member_id);
	}

	@Override
	public QnaVO qnaSelect(int qna_id) throws Exception {
		return session.selectOne(namespace+".qnaSelect", qna_id);
	}

	@Override
	public String qnaWriter(int qna_id) throws Exception {
		return session.selectOne(namespace+".qnaWriter", qna_id);
	}

	@Override
	public MemberVO memberInfo(int member_id) throws Exception {
		return session.selectOne(namespace+".memberInfo", member_id);
	}

	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		session.update(namespace+".memberUpdate", vo);
	}

	@Override
	public void memberKindUpdate(MemberVO vo) throws Exception {
		session.update(namespace+".memberKindUpdate", vo);
	}

}
