package com.bjs.cinema.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bjs.cinema.domain.CinemaVO;

public interface CinemaDAO {

	
	public List<CinemaVO> cinemaList()throws Exception;
	
	public List<Map<String, Integer>> cinemaTotal() throws Exception;
	
	public List<HashMap<String, Integer>> cinemaCount() throws Exception;
	
	public List<CinemaVO> cinemaRegion() throws Exception;
	
}
