package com.bjs.member.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import com.bjs.login.DTO.LoginDTO;
import com.bjs.member.domain.MemberVO;
import com.bjs.member.persistence.MemberDAO;

//현재 클래스를 스프링에서 관리하는 service bean으로 등록
@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO memberDao;
	
	//1-1 로그인 
	@Override
	public MemberVO login(LoginDTO dto) throws Exception {	
		return memberDao.login(dto);
	}

	//2-1 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		//세션 변수 개별 삭제 -> 세션 정보 초기화
		session.invalidate();
	}

	//3-1 회원 가입
	@Override
	public void regist(MemberVO member) throws Exception {
		memberDao.create(member);
		
	}

	

}
