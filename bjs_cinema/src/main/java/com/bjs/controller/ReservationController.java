package com.bjs.controller;





import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.bind.annotation.RequestParam;
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
	
	
	
	// 영화 LIST 출력
	@RequestMapping("/rsvList")
	public void cinemaRsvList(Model model) throws Exception {

		List<CinemaVO> list = null;
		list = cinemaService.cinemaList();
		
		model.addAttribute("movieList",movieService.movieList());
		model.addAttribute("cinemaTotal", cinemaService.cinemaCount()); 
		model.addAttribute("cinemaList", list);
	}
	

/*	//극장 지역, 갯수 출력
	@RequestMapping(value="/theaterList", method=RequestMethod.POST)
	@ResponseBody	
	public ResponseEntity<List<HashMap<String, Integer>>> cinemaCount() throws Exception {
		
		
		ResponseEntity<List<HashMap<String, Integer>>> entity = null;
		
		List<HashMap<String, Integer>> list = cinemaService.cinemaCount();
		
		System.out.println("씨발!!"+list);
		
		try {
			entity = new ResponseEntity<List<HashMap<String, Integer>>> (list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<HashMap<String, Integer>>> (HttpStatus.BAD_REQUEST);
		}
		return entity;
	}*/
	
	//극장 지역 ajax
	@RequestMapping(value="/cinemaRegion", method=RequestMethod.GET)
	@ResponseBody	
	public ResponseEntity<List<CinemaVO>> cinemaCount(@RequestParam("cinema_region") String cinema_region) throws Exception {
		
		
		ResponseEntity<List<CinemaVO>> entity = null;
		
		List<CinemaVO> list = cinemaService.cinemaRegion();
		
		
		
		System.out.println("띠빨!!"+list);
		
		try {
			entity = new ResponseEntity<List<CinemaVO>> (list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<CinemaVO>> (HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}

