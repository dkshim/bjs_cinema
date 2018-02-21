package com.bjs.controller;





import java.util.ArrayList;
import java.util.Formatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjs.cinema.domain.CinemaVO;
import com.bjs.cinema.service.CinemaService;
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
	@RequestMapping(value="/cinemaRegion", method=RequestMethod.POST)
	@ResponseBody	
	public ResponseEntity<List<CinemaVO>> cinemaRegion(@RequestParam("cinema_region") String cinema_region) throws Exception {
		
		
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println("컨트롤에서의 region :"+cinema_region);
		
		ResponseEntity<List<CinemaVO>> entity = null;
		List<CinemaVO> list = null;		
		
		if(cinema_region.equals("서울")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}else if(cinema_region.equals("경기")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}else if(cinema_region.equals("인천")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}else if(cinema_region.equals("강원")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}else if(cinema_region.equals("대전/충천")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}else if(cinema_region.equals("대구")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}else if(cinema_region.equals("부산/울산")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}else if(cinema_region.equals("경산")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}else if(cinema_region.equals("광주/전라/제주")){
			list = cinemaService.cinemaRegion(cinema_region);
			System.out.println("jsp가는 region :"+ list);
		}
		
		try {
			entity = new ResponseEntity<List<CinemaVO>> (list, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<List<CinemaVO>> (HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}

