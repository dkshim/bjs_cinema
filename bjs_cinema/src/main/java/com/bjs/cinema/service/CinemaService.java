package com.bjs.cinema.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bjs.cinema.domain.CinemaVO;

public interface CinemaService {

	public List<CinemaVO> cinemaList() throws Exception;
	
	public List<Map<String, Integer>> cinemaTotal() throws Exception;
	
	public List<HashMap<String, Integer>> cinemaCount() throws Exception;
	
	public List<CinemaVO> cinemaRegion(String cinema_region) throws Exception;
}
