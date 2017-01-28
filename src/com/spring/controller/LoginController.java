package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class LoginController {
	@RequestMapping(value="/login.html" , method=RequestMethod.GET)
	public ModelAndView loadLogin(HttpSession session, @RequestParam(value="error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout)
	{	
		 ModelAndView model = new ModelAndView();
		  if (error != null) {
			model.addObject("error", "Invalid username or password!");
		  }

		  if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		  }
		  model.setViewName("client/login");

		return model;
		
	}
	@RequestMapping(value="/admin/login.html" , method=RequestMethod.GET)
	public String adminLogin(HttpSession session, @RequestParam(value="error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout)
	{	
			return ("redirect:/login.html");
		
	}
}
