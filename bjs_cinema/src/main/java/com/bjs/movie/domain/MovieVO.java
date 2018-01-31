package com.bjs.movie.domain;

import java.sql.Timestamp;

public class MovieVO {

	private int movie_id;
	private String movie_name;
	private String movie_kind;
	private String movie_director;
	private String movie_actor;
	private String movie_genre;
	private String movie_grade;
	private String movie_date;
	private int movie_hit;
	private String movie_content;
	private String movie_national;
	private String movie_time;
	private String movie_img;
	
	public MovieVO(){}

	public MovieVO(int movie_id, String movie_name, String movie_kind, String movie_director, String movie_actor,
			String movie_genre, String movie_grade, String movie_date, int movie_hit, String movie_content,
			String movie_national, String movie_time, String movie_img) {
		super();
		this.movie_id = movie_id;
		this.movie_name = movie_name;
		this.movie_kind = movie_kind;
		this.movie_director = movie_director;
		this.movie_actor = movie_actor;
		this.movie_genre = movie_genre;
		this.movie_grade = movie_grade;
		this.movie_date = movie_date;
		this.movie_hit = movie_hit;
		this.movie_content = movie_content;
		this.movie_national = movie_national;
		this.movie_time = movie_time;
		this.movie_img = movie_img;
	}

	public int getMovie_id() {
		return movie_id;
	}

	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}

	public String getMovie_name() {
		return movie_name;
	}

	public void setMovie_name(String movie_name) {
		this.movie_name = movie_name;
	}

	public String getMovie_kind() {
		return movie_kind;
	}

	public void setMovie_kind(String movie_kind) {
		this.movie_kind = movie_kind;
	}

	public String getMovie_director() {
		return movie_director;
	}

	public void setMovie_director(String movie_director) {
		this.movie_director = movie_director;
	}

	public String getMovie_actor() {
		return movie_actor;
	}

	public void setMovie_actor(String movie_actor) {
		this.movie_actor = movie_actor;
	}

	public String getMovie_genre() {
		return movie_genre;
	}

	public void setMovie_genre(String movie_genre) {
		this.movie_genre = movie_genre;
	}

	public String getMovie_grade() {
		return movie_grade;
	}

	public void setMovie_grade(String movie_grade) {
		this.movie_grade = movie_grade;
	}

	public String getMovie_date() {
		return movie_date;
	}

	public void setMovie_date(String movie_date) {
		this.movie_date = movie_date;
	}

	public int getMovie_hit() {
		return movie_hit;
	}

	public void setMovie_hit(int movie_hit) {
		this.movie_hit = movie_hit;
	}

	public String getMovie_content() {
		return movie_content;
	}

	public void setMovie_content(String movie_content) {
		this.movie_content = movie_content;
	}

	public String getMovie_national() {
		return movie_national;
	}

	public void setMovie_national(String movie_national) {
		this.movie_national = movie_national;
	}

	public String getMovie_time() {
		return movie_time;
	}

	public void setMovie_time(String movie_time) {
		this.movie_time = movie_time;
	}

	public String getMovie_img() {
		return movie_img;
	}

	public void setMovie_img(String movie_img) {
		this.movie_img = movie_img;
	}

	@Override
	public String toString() {
		return "MovieVO [movie_id=" + movie_id + ", movie_name=" + movie_name + ", movie_kind=" + movie_kind
				+ ", movie_director=" + movie_director + ", movie_actor=" + movie_actor + ", movie_genre=" + movie_genre
				+ ", movie_grade=" + movie_grade + ", movie_date=" + movie_date + ", movie_hit=" + movie_hit
				+ ", movie_content=" + movie_content + ", movie_national=" + movie_national + ", movie_time="
				+ movie_time + ", movie_img=" + movie_img + "]";
	}
	
}
