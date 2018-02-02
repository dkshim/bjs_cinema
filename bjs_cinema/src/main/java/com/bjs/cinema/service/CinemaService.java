package com.bjs.cinema.service;

import java.util.List;

import com.bjs.cinema.domain.CinemaVO;

public interface CinemaService {

	public List<CinemaVO> cinemaList() throws Exception;
	
}
