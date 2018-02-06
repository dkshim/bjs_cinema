package com.bjs.member.service;

import javax.servlet.http.HttpSession;

import com.bjs.member.domain.MemberVO;

public interface MemberService {

	//1-1 회원 로그인 체크
	public boolean loginCheck(MemberVO vo, HttpSession session);
	
	//1-2 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
	//2-1 회원 로그아웃
	public void logout(HttpSession session);
	
}