package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.CountryDAO;
import com.spring.VO.CountryVO;

@Controller
public class CountryContoller {
	
	@Autowired
	CountryDAO country;

	@RequestMapping(value="/viewCountry.html" , method=RequestMethod.GET)
	public String loadCountry()
	{
		return("admin/viewCountry");
		
	}

	@RequestMapping(value="/addCountry.html" , method=RequestMethod.GET)
	public String addCountry()
	{
		return("admin/addCountry");
		
	}
	
	@RequestMapping(value="/insertCountry.html" , method=RequestMethod.GET)
	public ModelAndView insertCountry(@ModelAttribute CountryVO insertCountry)
	{
		ModelAndView model = new ModelAndView("admin/addCountry");
		
		return model;
		
		
	}
}
