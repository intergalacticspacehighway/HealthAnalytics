package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HospitalController {
	

	@RequestMapping(value="/viewHospital.html" , method=RequestMethod.GET)
	public String loadHospital()
	{
		return("admin/viewHospital");
		
	}

	@RequestMapping(value="/addHospital.html" , method=RequestMethod.GET)
	public String addHospital()
	{
		return("admin/addHospital");
		
	}
}
