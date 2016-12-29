package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.DiseaseDAO;
import com.spring.VO.DiseaseVO;

@Controller
public class DiseaseController {
	
	@Autowired
	DiseaseDAO disease;

	@RequestMapping(value="/viewDisease.html" , method=RequestMethod.GET)
	public String loadDisease()
	{
		return("admin/viewDisease");
		
	}

	@RequestMapping(value="/addDisease.html" , method=RequestMethod.GET)
	public ModelAndView addDisease()
	{
		return new ModelAndView("admin/addDisease","insertDisease",new DiseaseVO());
		
	}
	@RequestMapping(value="/insertDisease.html" , method=RequestMethod.POST)
	public String insertDisease(@ModelAttribute DiseaseVO insertDisease)
	{
		this.disease.insertDisease(insertDisease);
		return("redirect:/addDisease.html");
		
	}
}
