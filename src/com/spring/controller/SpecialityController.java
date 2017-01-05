package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.jboss.logging.annotations.Param;
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
	@RequestMapping(value="/viewSpeciality.html", method=RequestMethod.GET)
	public String viewSpeciality(HttpSession session) throws Exception
	{
		List<Object> list=this.speciality.getSpeciality();
		session.setAttribute("list",list);
		return("admin/viewSpeciality");
		
	}
	@RequestMapping(value="/deleteSpeciality.html" , method=RequestMethod.GET)
	public ModelAndView deleteSpeciality(@Param int id)
	{
		this.speciality.deleteSpeciality(id);
		return new ModelAndView("redirect:/viewSpeciality.html");
		
	}
	@RequestMapping(value="/editSpeciality.html" , method=RequestMethod.GET)
	public ModelAndView editSpeciality(@Param int id, HttpSession session)
	{
		List<Object> list= this.speciality.editSpeciality(id);
		session.setAttribute("list",list);
		return new ModelAndView("admin/editSpeciality","updateSpeciality",new SpecialityVO());
				
	}
	@RequestMapping(value="/updateSpeciality.html" , method=RequestMethod.POST)
	public ModelAndView updateSpeciality(@ModelAttribute SpecialityVO updateSpeciality)
	{
		this.speciality.insertSpeciality(updateSpeciality);
		return new ModelAndView("redirect:/viewSpeciality.html");
		
	}
	@RequestMapping(value="/deleteSpecialityisActive.html" , method=RequestMethod.GET)
	public String updateisActive(@Param int id) throws Exception
	{
		this.speciality.updateIsactive(id);
		
		return("redirect:/viewSpeciality.html");
		
	}
	
}
