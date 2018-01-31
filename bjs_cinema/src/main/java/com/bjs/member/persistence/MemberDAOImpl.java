package com.bjs.member.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bjs.login.DTO.LoginDTO;
import com.bjs.member.domain.MemberVO;


@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bjs.mappers.MemberMapper";
	
	@Override
	public int findMemberId(String Member_email) throws Exception {
		if(session.selectOne(namespace+".findId", Member_email) == null){
			return -1;
		} else {
			return session.selectOne(namespace+".findId", Member_email);
		}
	}
	
	@Override
	public String findMemberEmail(int Member_id) throws Exception {
		return session.selectOne(namespace + ".findEmail", Member_id);
	}
	
	@Override
	public String findMemberName(int Member_id) throws Exception {
		return session.selectOne(namespace + ".findName", Member_id);
	}

/*	@Override
	public MemberVO loginCheck(String Member_email) {
		// TODO Auto-generated method stub
		return null;
	}*/
	
	@Override
	public MemberVO login(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public MemberVO loginCheck(String Member_email) {
		return session.selectOne(namespace + ".loginCheck", Member_email);
	}

}
