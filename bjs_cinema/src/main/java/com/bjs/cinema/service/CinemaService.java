package com.bjs.cinema.service;

import java.util.List;
import java.util.Map;

import com.bjs.cinema.domain.CinemaVO;

public interface CinemaService {

	public List<CinemaVO> cinemaList() throws Exception;
	
/*	public List<CinemaVO> cinemaTotal()throws Exception;*/
	
	public List<Map<String, Integer>> cinemaTotal() throws Exception;
	
	public List<CinemaVO> cinemaCount() throws Exception;
}
