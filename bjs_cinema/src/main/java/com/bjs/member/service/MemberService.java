package com.bjs.member.service;

import javax.servlet.http.HttpSession;

import com.bjs.login.DTO.LoginDTO;
import com.bjs.member.domain.MemberVO;

public interface MemberService {

	//1-1 회원 로그인 체크
	public boolean loginCheck(MemberVO vo, HttpSession session);
	
	//1-2 회원 로그인 정보
	public MemberVO viewMember(MemberVO vo);
	
	//2-1 회원 로그아웃
	public void logout(HttpSession session);
	
	//3-1 회원 가입
	public void regist(MemberVO member)throws Exception;
	
	//로그인 처리
	public MemberVO login(LoginDTO dto) throws Exception;
	
}
