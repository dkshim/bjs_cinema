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
	public void movieInsert(MovieVO vo)throws Exception {
		session.insert(namespace+ ".movieInsert", vo);
	}
	
	@Override
	public List<MovieVO> movieList()throws Exception{
		return session.selectList(namespace+".movieList");
	}
	
	@Override
	public MovieVO movieRead(Integer movie_id)throws Exception{
		return session.selectOne(namespace+".movieRead", movie_id);
	}
}
