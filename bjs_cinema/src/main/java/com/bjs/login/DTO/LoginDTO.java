package com.bjs.login.DTO;

public class LoginDTO {

	private String member_identify;
	private String member_pwd;
	
	public LoginDTO(){}

	public LoginDTO(String member_identify, String member_pwd) {
		super();
		this.member_identify = member_identify;
		this.member_pwd = member_pwd;
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
	
	
}