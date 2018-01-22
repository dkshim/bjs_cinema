package com.bjs.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bjs.movie.service.MovieService;




@Controller
@RequestMapping("/movie/*")
public class MovieController {

	private static final Logger logger =
			LoggerFactory.getLogger(MovieController.class);
	
	@Inject
	private MovieService movieservice;


	//영화리스트
	
	@RequestMapping(value="/movieList", method=RequestMethod.GET)
	public void movieListGET(Model model)throws Exception{
		
		System.out.println("시발");
	}
	
	@RequestMapping(value="/movieList", method=RequestMethod.POST)
	public String movieListPOST(Model model)throws Exception {
		
		return "movie/movieList";
	}

}

