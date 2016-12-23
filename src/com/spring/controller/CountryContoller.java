package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CountryContoller {

	@RequestMapping(value="/viewCountry.html" , method=RequestMethod.GET)
	public String loadCountry()
	{
		return("admin/viewCountry");
		
	}

	@RequestMapping(value="/addCountry.html" , method=RequestMethod.GET)
	public String addCountry()
	{
		return("admin/addCountry");
		
	}
}
