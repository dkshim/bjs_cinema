/*package com.bjs.controller;


import java.util.HashMap;
import java.util.List;


import javax.inject.Inject;


import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.bjs.cinema.service.CinemaService;
import com.bjs.movie.service.MovieService;



@RestController
@RequestMapping("/reservation/*")
public class RsvAjaxController {


	@Inject
	private CinemaService cinemaService;
	
	@Inject
	private MovieService movieService;
	
	
	@RequestMapping(value="/rsvList", method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<HashMap<String, List<?>>> rsvListPOST()throws Exception {
		
		ResponseEntity<HashMap<String, List<?>>> entity = null;
		HashMap<String, List<?>> map = new HashMap<>();
		
		
		List<?> list = null;
		
		list = cinemaService.cinemaList();
		
		System.out.println(list.toString());
		try {
			map.put("list", list);
			entity = new ResponseEntity<HashMap<String, List<?>>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<HashMap<String, List<?>>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
}
*/