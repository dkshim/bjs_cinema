package com.bjs.member.domain;

public class MemberVO {

	private int member_id;
	private String member_identify;
	private String member_email;
	private String member_pwd;
	private String member_name;
	private String member_ssn;
	private String member_phone;
	private int member_mileage;
	private String member_kind;
	private String member_gender;
	
	public MemberVO() {}

	public MemberVO(int member_id, String member_identify, String member_email, String member_pwd, String member_name,
			String member_ssn, String member_phone, int member_mileage, String member_kind, String member_gender) {
		super();
		this.member_id = member_id;
		this.member_identify = member_identify;
		this.member_email = member_email;
		this.member_pwd = member_pwd;
		this.member_name = member_name;
		this.member_ssn = member_ssn;
		this.member_phone = member_phone;
		this.member_mileage = member_mileage;
		this.member_kind = member_kind;
		this.member_gender = member_gender;
	}

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	public String getMember_identify() {
		return member_identify;
	}

	public void setMember_identify(String member_identify) {
		this.member_identify = member_identify;
	}

	public String getMember_email() {
		return member_email;
	}

	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}

	public String getMember_pwd() {
		return member_pwd;
	}

	public void setMember_pwd(String member_pwd) {
		this.member_pwd = member_pwd;
	}

	public String getMember_name() {
		return member_name;
	}

	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getMember_ssn() {
		return member_ssn;
	}

	public void setMember_ssn(String member_ssn) {
		this.member_ssn = member_ssn;
	}

	public String getMember_phone() {
		return member_phone;
	}

	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}

	public int getMember_mileage() {
		return member_mileage;
	}

	public void setMember_mileage(int member_mileage) {
		this.member_mileage = member_mileage;
	}

	public String getMember_kind() {
		return member_kind;
	}

	public void setMember_kind(String member_kind) {
		this.member_kind = member_kind;
	}

	public String getMember_gender() {
		return member_gender;
	}

	public void setMember_gender(String member_gender) {
		this.member_gender = member_gender;
	}

	
	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", member_identify=" + member_identify + ", member_email="
				+ member_email + ", member_pwd=" + member_pwd + ", member_name=" + member_name + ", member_ssn="
				+ member_ssn + ", member_phone=" + member_phone + ", member_mileage=" + member_mileage
				+ ", member_kind=" + member_kind + ", member_gender=" + member_gender + "]";
	}
	
}
