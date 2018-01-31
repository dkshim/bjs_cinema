package com.bjs.mypages.domain;

import java.io.Serializable;
import java.sql.Timestamp;

public class QnaVO  implements Serializable{
	private int qna_id;
	private Timestamp qna_date;
	private String qna_title;
	private String qna_content;
	private String qna_state;
	private int member_id;
	
	public QnaVO() {}

	public QnaVO(int qna_id, Timestamp qna_date, String qna_title, String qna_content, String qna_state, int member_id) {
		this.qna_id = qna_id;
		this.qna_date = qna_date;
		this.qna_title = qna_title;
		this.qna_content = qna_content;
		this.qna_state = qna_state;
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

	public String getQna_title() {
		return qna_title;
	}

	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public String getQna_state() {
		return qna_state;
	}

	public void setQna_state(String qna_state) {
		this.qna_state = qna_state;
	}

	public int getMember_id() {
		return member_id;
	}

	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}

	@Override
	public String toString() {
		return "QnaVO [qna_id=" + qna_id + ", qna_date=" + qna_date + ", qna_title=" + qna_title + ", qna_content="
				+ qna_content + ", qna_state=" + qna_state + ", member_id=" + member_id + "]";
	}

	
}
