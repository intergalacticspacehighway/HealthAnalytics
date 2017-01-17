package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	@RequestMapping(value="/index.html" , method=RequestMethod.GET)
public String loadIndex()
{
<<<<<<< HEAD
		return("admin/index");
=======
		return("client/home");
>>>>>>> origin/master
}
	@RequestMapping(value="/admin.html" , method=RequestMethod.GET)
public String loadIndex2()
{
		return("admin/index");
}
	@RequestMapping(value="/authorize.html" , method=RequestMethod.GET)
public String authorize()
{
		return("client/home");
}
	
}
