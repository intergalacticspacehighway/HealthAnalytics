package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StateController {


	@RequestMapping(value="/viewState.html" , method=RequestMethod.GET)
	public String loadState()
	{
		return("admin/viewState");
		
	}

	@RequestMapping(value="/addState.html" , method=RequestMethod.GET)
	public String addState()
	{
		return("admin/addState");
		
	}
}
