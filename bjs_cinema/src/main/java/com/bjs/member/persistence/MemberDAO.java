package com.bjs.member.persistence;

import javax.servlet.http.HttpSession;

import com.bjs.login.DTO.LoginDTO;
import com.bjs.member.domain.MemberVO;

public interface MemberDAO {
	
	//1-1 회원 가입
	public void create(MemberVO vo)throws Exception;

	//2-1 로그인
	public MemberVO login(LoginDTO dto)throws Exception;
		
	//3-1 회원 로그아웃
	public void logout(HttpSession session);
	
	
	
	
}
