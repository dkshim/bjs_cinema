package com.bjs.cinema.persistence;

import org.apache.ibatis.session.SqlSession;

public class CinemaDAOImpl implements CinemaDAO {
	
	private SqlSession session;
	
	private static String namespace="com.bjs.mappers.cinemaMapper";

}
