package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/index.html" , method=RequestMethod.GET)
public String loadIndex()
{
		return("client/index");
}
	
}
