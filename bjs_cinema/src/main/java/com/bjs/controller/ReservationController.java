package com.bjs.controller;





import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.swing.plaf.synth.SynthSeparatorUI;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	private MovieService movieService;
	
	@Inject
	private CinemaService cinemaService;
	
	
/*	//영화 LIST 출력
	@ResponseBody
	@RequestMapping(value="/movieList", method=RequestMethod.POST)
	public void movieRsvList(Model model) throws Exception {
		
		List<MovieVO> list = null;
		list = movieService.movieList();
		
		System.out.println(list.toString());
		
		model.addAttribute("movieList", list);
	}*/
	
	
	// 극장 LIST 출력
	@RequestMapping("/rsvList")
	public void cinemaRsvList(Model model) throws Exception {

		List<CinemaVO> list = null;
		list = cinemaService.cinemaList();
		
		
		model.addAttribute("cinemaTotal", cinemaService.cinemaTotal());
		
		System.out.println(cinemaService.cinemaTotal());
		
		model.addAttribute("movieList",movieService.movieList());
		model.addAttribute("cinemaList", list);
	}
	
/*	//포스터 출력 
	@RequestMapping(value="moviePoster", method=RequestMethod.POST)
	public */
	
	
}

