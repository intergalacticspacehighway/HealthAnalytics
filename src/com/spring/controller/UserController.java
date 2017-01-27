package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	@RequestMapping(value = "/{userName}/profile.html", method = RequestMethod.GET)
	public String displayProfile(@PathVariable String userName, ModelMap map)
	{	
		map.addAttribute("userName",userName);
		return("client/profile");
	}
}
