package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
	@RequestMapping(value="/login.html" , method=RequestMethod.GET)
	public String loadLogin(HttpSession session)
	{	
		
		return("/client/login");
		
	}
}
