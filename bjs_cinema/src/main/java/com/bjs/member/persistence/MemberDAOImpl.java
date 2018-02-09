package com.bjs.member.persistence;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.bjs.login.DTO.LoginDTO;
import com.bjs.member.domain.MemberVO;

//현재 클래스를 스프링에서 관라하는 dao bean으로 등록한다.
@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bjs.mappers.memberMapper";
	
	//로그인 처리
	@Override
	public MemberVO login(LoginDTO dto) throws Exception {	
		return session.selectOne(namespace+".login", dto);
		}

	//2-1 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
	}

	//3-1 회원 가입
	@Override
	public void create(MemberVO vo) throws Exception {
		session.insert(namespace+".create", vo);
		
	}


	

}
