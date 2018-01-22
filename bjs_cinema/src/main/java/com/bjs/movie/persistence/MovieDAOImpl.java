package com.bjs.movie.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bjs.movie.domain.MovieVO;


@Repository
public class MovieDAOImpl implements MovieDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace="com.bjs.mappers.movieMapper";
	
	
	@Override
	public void movieInsert(int movie_id)throws Exception {
		session.insert(namespace+ ".movieInsert", movie_id);
	}
	
}
