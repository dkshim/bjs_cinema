package com.bjs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@RequestMapping(value="admin", method=RequestMethod.GET)
	public void admin(){
	
	}
	
	
	@RequestMapping(value="member",method=RequestMethod.GET)
	public void member(){
	}
			
			
	@RequestMapping(value="movie", method=RequestMethod.GET)
	public void movie(){
		
	}
	
	@RequestMapping(value="store", method=RequestMethod.GET)
	public void store(){
		
	}
	
	
}
