package com.bjs.movie.service;

import java.util.List;

import com.bjs.movie.domain.MovieVO;

public interface MovieService {
	
	public void movieInsert(MovieVO vo)throws Exception;
	
	public List<MovieVO> movieList()throws Exception;
	
	public MovieVO movieRead(Integer movie_id)throws Exception;
}
