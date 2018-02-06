package com.bjs.member.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.bjs.member.domain.MemberVO;
import com.bjs.member.persistence.MemberDAO;

//현재 클래스를 스프링에서 관리하는 service bean으로 등록
@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDao;
	
	//1-1 회원 로그인 체크
	@Override
	public boolean loginCheck(MemberVO vo, HttpSession session) {
		boolean result = memberDao.loginCheck(vo);
		
		/****true일 경우 세션에 등록한다. ****/
		if(result) {
			MemberVO vo2 = viewMember(vo);
			//세션 변수 등록
			session.setAttribute("member_identify", vo2.getMember_identify());
			session.setAttribute("member_pwd", vo2.getMember_pwd());
		}
		return result;
	}

	//1-2 회원 로그인 정보
	@Override
	public MemberVO viewMember(MemberVO vo) {
		return memberDao.viewMember(vo);
	}

	//2-1 회원 로그아웃
	@Override
	public void logout(HttpSession session) {
		//세션 변수 개별 삭제 -> 세션 정보 초기화
		session.invalidate();
	}

}
