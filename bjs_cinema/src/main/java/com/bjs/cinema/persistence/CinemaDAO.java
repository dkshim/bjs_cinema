package com.bjs.cinema.persistence;

import java.util.List;

import com.bjs.cinema.domain.CinemaVO;

public interface CinemaDAO {

/*	public void cinemaInsert(CinemaVO vo)throws Exception;*/
	
	public List<CinemaVO> cinemaList()throws Exception;
	
	public List<CinemaVO> cinemaTotal()throws Exception;
}
