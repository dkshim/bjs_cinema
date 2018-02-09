package com.bjs.login.DTO;

public class LoginDTO {

	private String member_identify;
	private String member_pwd;
	private boolean memberCookie;
	
	public LoginDTO(){}

	public LoginDTO(String member_identify, String member_pwd, boolean memberCookie) {
		super();
		this.member_identify = member_identify;
		this.member_pwd = member_pwd;
		this.memberCookie = memberCookie;
	}

	public String getMember_identify() {
		return member_identify;
	}

	public void setMember_identify(String member_identify) {
		this.member_identify = member_identify;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public boolean isMemberCookie() {
		return memberCookie;
	}

	public void setMemberCookie(boolean memberCookie) {
		this.memberCookie = memberCookie;
	}

	@Override
	public String toString() {
		return "LoginDTO [member_identify=" + member_identify + ", member_pwd=" + member_pwd + ", memberCookie="
				+ memberCookie + "]";
	}

	
	
	
}