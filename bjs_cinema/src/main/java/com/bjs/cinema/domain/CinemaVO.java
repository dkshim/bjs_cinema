package com.bjs.cinema.domain;

public class CinemaVO {

	private int cinema_id;
	private String cinema_region;
	private String cinema_kind;
	private String cinema_outlook;
	private String cinema_seat;
	
	public CinemaVO(int cinema_id, String cinema_region, String cinema_kind, String cinema_outlook,
			String cinema_seat) {
		super();
		this.cinema_id = cinema_id;
		this.cinema_region = cinema_region;
		this.cinema_kind = cinema_kind;
		this.cinema_outlook = cinema_outlook;
		this.cinema_seat = cinema_seat;
	}

	public int getCinema_id() {
		return cinema_id;
	}

	public void setCinema_id(int cinema_id) {
		this.cinema_id = cinema_id;
	}

	public String getCinema_region() {
		return cinema_region;
	}

	public void setCinema_region(String cinema_region) {
		this.cinema_region = cinema_region;
	}

	public String getCinema_kind() {
		return cinema_kind;
	}

	public void setCinema_kind(String cinema_kind) {
		this.cinema_kind = cinema_kind;
	}

	public String getCinema_outlook() {
		return cinema_outlook;
	}

	public void setCinema_outlook(String cinema_outlook) {
		this.cinema_outlook = cinema_outlook;
	}

	public String getCinema_seat() {
		return cinema_seat;
	}

	public void setCinema_seat(String cinema_seat) {
		this.cinema_seat = cinema_seat;
	}

	@Override
	public String toString() {
		return "CinemaVO [cinema_id=" + cinema_id + ", cinema_region=" + cinema_region + ", cinema_kind=" + cinema_kind
				+ ", cinema_outlook=" + cinema_outlook + ", cinema_seat=" + cinema_seat + "]";
	}
	
}
