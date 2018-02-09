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
		model.addAttribute("cinemaList", list);
	}
	
/*	//포스터 출력 
	@RequestMapping(value="moviePoster", method=RequestMethod.POST)
	public */
	
/*	//극장 지역, 갯수 출력
	@RequestMapping("/theaterList")
	@ResponseBody
	public ResponseEntity<List<HashMap<String, Integer>>> cinemaTotal() throws Exception {
		
		ResponseEntity<List<HashMap<String, Integer>>> entity = null;
		List<Map<String, Integer>> list = cinemaService.cinemaTotal();
		List<HashMap<String, Integer>> replaceList = new ArrayList<HashMap<String,Integer>>();
		
		
		for(int i=0; i<list.size(); i++){
			HashMap<String, Integer> map = (HashMap<String, Integer>) list.get(i);
			
			System.out.println(map);
			replaceList.add(map);
		}
		
		try {
			entity = new ResponseEntity<List<HashMap<String, Integer>>>(replaceList,HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<HashMap<String, Integer>>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	
	}*/
	//극장 지역, 갯수 출력
	@RequestMapping(value="/theaterList", method=RequestMethod.POST)
	@ResponseBody	
	public ResponseEntity <List<CinemaVO>> cinemaCount() throws Exception {
		
		
		ResponseEntity<List<CinemaVO>> entity = null;
		
		List<CinemaVO> list= cinemaService.cinemaCount();
	
		/*for(int i=0; i<list.size(); i++){
			
			Map<String, Integer> map = (Map<String, Integer>) list.get(i);
			
			System.out.println(i+ " in list for : "+map);
			System.out.println(i+ " in key for : "+map.keySet());
			
			list.add(map);
		}
		*/
		
		System.out.println("나와라 씨빨!!!!!!!!!!!"+list);
		
		try {
			entity = new ResponseEntity <List<CinemaVO>> (list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity <List<CinemaVO>> (HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}

