package com.bjs.member.persistence;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bjs.login.DTO.LoginDTO;
import com.bjs.member.domain.MemberVO;
import com.sun.mail.imap.protocol.Namespaces.Namespace;

//현재 클래스를 스프링에서 관라하는 dao bean으로 등록한다.
@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bjs.mappers.memberMapper";
	
	//1-1 회원 로그인 체크
	@Override
	public Boolean loginCheck(MemberVO vo) {
		String name = session.selectOne("member.loginCheck", vo);
		return (name == null) ? false : true;
	}

	//1-2 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		
		return session.selectOne("member.viewMember",vo);
	}

	//2-1 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
	}

	//로그인 처리
	@Override
	public MemberVO login(String member_identify) throws Exception {
		
		return session.selectOne(namespace+".login", member_identify);
	}

}
