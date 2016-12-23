package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CityController {

	@RequestMapping(value="/addCity.html", method=RequestMethod.GET)
	public String addCity()
	{
		return ("admin/addCity");
	}
	
	@RequestMapping(value="/viewCity.html", method=RequestMethod.GET)
	public String loadCity()
	{
		return ("admin/viewCity");
	}
}
