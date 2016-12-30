package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class DoctorController {
   
	@RequestMapping(value="/viewDoctor.html", method=RequestMethod.GET)
	public String loadDoctor()
	{
		return ("admin/viewDoctor");
		
	}
	
	@RequestMapping(value="/addDoctor.html", method=RequestMethod.GET)
	public String addDoctor()
	{
		return ("admin/addDoctor");
		
	}
}
