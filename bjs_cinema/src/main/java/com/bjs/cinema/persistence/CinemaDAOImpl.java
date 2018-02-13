package com.bjs.cinema.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bjs.cinema.domain.CinemaVO;

@Repository
public class CinemaDAOImpl implements CinemaDAO {
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace="com.bjs.mappers.cinemaMapper";

	@Override
	public List<CinemaVO> cinemaList()throws Exception{
		return session.selectList(namespace+".cinemaList");
	}
	
	@Override
	public List<Map<String, Integer>> cinemaTotal() throws Exception{
		return session.selectList(namespace+".cinemaTotal");
	}

	@Override
	public List<HashMap<String, Integer>> cinemaCount() throws Exception{
		return session.selectList(namespace+".cinemaCount");
	}
	
	@Override
	public List<CinemaVO> cinemaRegion() throws Exception {
		return session.selectList(namespace+".cinemaRegion");
	}
}
