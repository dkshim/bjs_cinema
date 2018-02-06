package com.bjs.member.persistence;

import javax.servlet.http.HttpSession;

import com.bjs.member.domain.MemberVO;

public interface MemberDAO {

	//1-1 회원 로그인 체크
	public Boolean loginCheck(MemberVO vo);
	//1-2 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	//2-1 회원 로그아웃
	public void logout(HttpSession session);
}
