package com.bjs.controller;





import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.validation.Valid;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;


import com.bjs.cinema.domain.CinemaVO;
import com.bjs.cinema.service.CinemaService;
import com.bjs.movie.domain.MovieVO;
import com.bjs.movie.service.MovieService;



@Controller
@RequestMapping("/reservation/*")
public class ReservationController {

	private static final Logger logger =
			LoggerFactory.getLogger(ReservationController.class);
	
	@Inject
	private CinemaService cinemaservice;
	
	@Inject
	private MovieService movieservice;
	
		
		//예매 LIST 출력
		@RequestMapping("/rsvList")
		public void rsvList(Model model, MovieVO movievo, CinemaVO cinemavo) throws Exception {
			movieservice.movieList();
			cinemaservice.cinemaList();
		}
}

