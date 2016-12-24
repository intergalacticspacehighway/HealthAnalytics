package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.CountryDAO;
import com.spring.VO.CountryVO;
import com.spring.VO.StateVO;

@Controller
public class CountryContoller {
	
	@Autowired
	CountryDAO country;

	@RequestMapping(value="/viewCountry.html" , method=RequestMethod.GET)
	public String loadCountry(HttpSession session)
	{
		return("admin/viewCountry");
		
	}

	@RequestMapping(value="/addCountry.html" , method=RequestMethod.GET)
	public ModelAndView addCountry()
	{
		
		return new ModelAndView("admin/addCountry","insertCountry",new CountryVO());
		
	}
	
	@RequestMapping(value="/insertCountry.html" , method=RequestMethod.POST)
	public ModelAndView insertCountry(@ModelAttribute CountryVO insertCountry)
	{	
		
		try {
			this.country.insertCountry(insertCountry);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		ModelAndView model = new ModelAndView("redirect:/addCountry.html");
		
		return model;
		
		
	}
}
