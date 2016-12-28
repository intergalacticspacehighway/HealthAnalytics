package com.spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.SymptomDAO;
import com.spring.VO.SymptomVO;

@Controller
public class SymptomController {

	@Autowired
	SymptomDAO symptom;

	@RequestMapping(value="/viewSymptom.html" , method=RequestMethod.GET)
	public String loadSymptom()
	{
		return("admin/viewSymptom");
		
	}

	@RequestMapping(value="/addSymptom.html" , method=RequestMethod.GET)
	public ModelAndView addSymptom()
	{
		return new ModelAndView("admin/addSymptom","insertSymptom",new SymptomVO());
		
	}
	@RequestMapping(value="/insertSymptom.html",method=RequestMethod.POST)
	public ModelAndView insertSymptom(@ModelAttribute SymptomVO insertSymptom)
	{
		try {
			this.symptom.insertSymptom(insertSymptom);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/addSymptom.html");
	}
}
