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

import com.spring.DAO.DiseaseDAO;
import com.spring.VO.CountryVO;
import com.spring.VO.DiseaseVO;

@Controller
@RequestMapping("/admin")
public class DiseaseController {
	
	@Autowired
	DiseaseDAO disease;

	@RequestMapping(value="/viewDisease.html" , method=RequestMethod.GET)
	public String viewDisease(HttpSession session) throws Exception
	{
		List<Object> list=this.disease.getDisease();
		session.setAttribute("list",list);
		return("admin/viewDisease");
		
	}

	@RequestMapping(value="/addDisease.html" , method=RequestMethod.GET)
	public ModelAndView addDisease()
	{
		return new ModelAndView("admin/addDisease","insertDisease",new DiseaseVO());
		
	}
	
	@RequestMapping(value="/insertDisease" , method=RequestMethod.POST)
	public String insertDisease(@ModelAttribute DiseaseVO insertDisease)
	{
		disease.insertDisease(insertDisease);
		return("redirect:/addDisease.html");
		
	}
	
	@RequestMapping(value="/deleteDisease.html" , method=RequestMethod.GET)
	public String deleteDisease(@Param int id)
	{
		disease.deleteDisease(id);
		return("redirect:/viewDisease.html");
		
	}
	
	@RequestMapping(value="/editDisease.html" , method=RequestMethod.GET)
	public ModelAndView editCountry(@Param int id, HttpSession session)
	{
		List<Object> DiseaseList=this.disease.editDisease(id);
		session.setAttribute("list",DiseaseList);
		
			return new ModelAndView("admin/editDisease","updateDisease",new DiseaseVO()); 
		
	}
	
	@RequestMapping(value="/updateDisease.html" , method=RequestMethod.POST)
	public ModelAndView updateDisease(@ModelAttribute DiseaseVO  updateDisease)
	{
		disease.insertDisease(updateDisease);
		return new ModelAndView("redirect:/viewDisease.html");
		
	}
	
	@RequestMapping(value="/deleteDiseaseisActive.html" , method=RequestMethod.GET)
	public String updateisActive(@Param int id) throws Exception
	{
		this.disease.updateIsactive(id);
		
		return("redirect:/viewDisease.html");
		
	}
}
