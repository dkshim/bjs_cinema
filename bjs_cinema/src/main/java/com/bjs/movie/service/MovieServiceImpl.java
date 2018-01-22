package com.bjs.movie.service;

import java.util.List;

import javax.inject.Inject;



import org.springframework.stereotype.Service;

import com.bjs.movie.domain.MovieVO;
import com.bjs.movie.persistence.MovieDAO;


@Service
public class MovieServiceImpl implements MovieService {

	@Inject
	private MovieDAO dao;

	@Override
	public void movieInsert(int movie_id) throws Exception {
		dao.movieInsert(movie_id);

	}
}
