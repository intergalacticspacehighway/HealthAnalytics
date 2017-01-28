package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/admin")
public class FeedbackController {

	@RequestMapping(value="/viewFeedback.html" , method=RequestMethod.GET)
	public String loadFeedback()
	{
		return("admin/viewFeedback");
		
	}

}
