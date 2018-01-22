package com.bjs.mypages.domain;

import java.sql.Timestamp;

public class QnaVO {
	private int qna_id;
	private Timestamp qna_date;
	private String qna_content;
	private int member_id;
	
	public QnaVO() {}

	public QnaVO(int qna_id, Timestamp qna_date, String qna_content, int member_id) {
		this.qna_id = qna_id;
		this.qna_date = qna_date;
		this.qna_content = qna_content;
		this.member_id = member_id;
	}

	public int getQna_id() {
		return qna_id;
	}

	public void setQna_id(int qna_id) {
		this.qna_id = qna_id;
	}

	public Timestamp getQna_date() {
		return qna_date;
	}

	public void setQna_date(Timestamp qna_date) {
		this.qna_date = qna_date;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	@Override
	public String toString() {
		return "QnaVO [qna_id=" + qna_id + ", qna_date=" + qna_date + ", qna_content=" + qna_content + ", member_id="
				+ member_id + "]";
	}
	
	
	
	
}
