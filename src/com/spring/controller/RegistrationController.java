package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegistrationController {
	@RequestMapping(value="/registration.html" , method=RequestMethod.GET)
	public String loadRegistration()
	{
		return("client/registration");
		
	}
}
