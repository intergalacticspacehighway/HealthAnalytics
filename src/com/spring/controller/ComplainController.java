package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class ComplainController {

	@RequestMapping(value="/viewComplaint.html" , method=RequestMethod.GET)
	public String loadComplain()
	{
		return("admin/viewComplaint");
		
	}
	
	
}
