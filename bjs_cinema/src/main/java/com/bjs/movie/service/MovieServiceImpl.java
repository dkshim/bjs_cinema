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
	public void movieInsert(MovieVO vo) throws Exception {
		dao.movieInsert(vo);
	}
	
	@Override
	public List<MovieVO> movieList()throws Exception{
		return dao.movieList();
	}
	
	@Override
	public MovieVO movieRead(Integer movie_id)throws Exception{
		return dao.movieRead(movie_id);
	}
}
