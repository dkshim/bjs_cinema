package com.bjs.cinema.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bjs.cinema.domain.CinemaVO;
import com.bjs.cinema.persistence.CinemaDAO;

@Service
public class CinemaServiceImpl implements CinemaService {

	@Inject
	private CinemaDAO dao;
	
	@Override
	public List<CinemaVO> cinemaList()throws Exception {
		return dao.cinemaList();
	}
}
