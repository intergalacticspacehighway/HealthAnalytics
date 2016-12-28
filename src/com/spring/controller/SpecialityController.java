package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.SpecialityDAO;
import com.spring.VO.SpecialityVO;

@Controller
public class SpecialityController {
	
	@Autowired
	SpecialityDAO speciality;

	@RequestMapping(value="/addSpeciality.html" , method=RequestMethod.GET)
	public ModelAndView addSpeciality()
	{
		return new ModelAndView("admin/addSpeciality","insertSpeciality",new  SpecialityVO());
		
	}
	@RequestMapping(value="/insertSpeciality.html" , method=RequestMethod.POST)
	public ModelAndView insertSpeciality(@ModelAttribute SpecialityVO inserSpeciality)
	{		
		this.speciality.insertSpeciality(inserSpeciality);
		
		return new ModelAndView("admin/addSpeciality","insertSpeciality",new  SpecialityVO());
		
	}
	
	
}
