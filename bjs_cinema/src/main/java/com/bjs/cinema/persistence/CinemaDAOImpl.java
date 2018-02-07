package com.bjs.cinema.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bjs.cinema.domain.CinemaVO;

@Repository
public class CinemaDAOImpl implements CinemaDAO {
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.bjs.mappers.cinemaMapper";

	
/*	@Override
	public void cinemaInsert(CinemaVO vo)throws Exception {
		session.selectOne(namespace+".cinemaInsert", vo);
	}*/	

	@Override
	public List<CinemaVO> cinemaList()throws Exception{
		return session.selectList(namespace+".cinemaList");
	}
	
	@Override
	public List<CinemaVO> cinemaTotal()throws Exception{
		return session.selectList(namespace+".cinemaTotal");
	}
}
