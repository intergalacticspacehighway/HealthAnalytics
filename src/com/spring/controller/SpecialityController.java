package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.VO.SpecialityVO;

@Controller
public class SpecialityController {

	@RequestMapping(value="/addSpeciality.html" , method=RequestMethod.GET)
	public ModelAndView addSpeciality()
	{
		return new ModelAndView("admin/addSpeciality","insertSpeciality",new  SpecialityVO());
		
	}
}
