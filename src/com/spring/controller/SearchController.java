package com.spring.controller;

import org.jboss.logging.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SearchController {
	@RequestMapping(value = "search.html", method = RequestMethod.POST)
	public String search(@Param String q) {
		switch (q.toLowerCase()) {
		case "doctor":
			return "client/home";
		case "hospital":
			return "client/bloggrid";

		default:
			break;
		}
		
		return null;
	}
}
