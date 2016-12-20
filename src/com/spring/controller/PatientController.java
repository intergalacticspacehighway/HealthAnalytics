package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PatientController {
	
	@RequestMapping(value="/viewPatient.html" , method=RequestMethod.GET)
	public String loadPatient()
	{
		return("admin/viewPatient");
		
	}

	@RequestMapping(value="/addPatient.html" , method=RequestMethod.GET)
	public String addPatient()
	{
		return("admin/addPatient");
		
	}
}
