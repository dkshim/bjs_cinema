package com.bjs.member.persistence;

import com.bjs.login.DTO.LoginDTO;
import com.bjs.member.domain.MemberVO;


public interface MemberDAO {
	
	public int findMemberId(String member_email) throws Exception;
	public String findMemberEmail(int member_id) throws Exception;
	public String findMemberName(int member_id) throws Exception;
	
	public MemberVO login(LoginDTO dto) throws Exception;	
	public MemberVO loginCheck(String person_email);

}
