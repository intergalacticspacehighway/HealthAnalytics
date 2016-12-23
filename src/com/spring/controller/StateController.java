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
import com.spring.DAO.StateDAO;
import com.spring.VO.StateVO;

@Controller
public class StateController {

	@Autowired
	StateDAO state;
	CountryDAO country;
	
	@RequestMapping(value="/viewState.html" , method=RequestMethod.GET)
	public String loadState()
	{
		return("admin/viewState");
		
	}

	@RequestMapping(value="/addState.html" , method=RequestMethod.GET)
	public ModelAndView addState(HttpSession session)
	{	
		try {
			List<Object> ls = this.country.getCountry();
			session.setAttribute("ls", ls);
			
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return new ModelAndView("admin/addState","insertState",new StateVO());
		
	}
	@RequestMapping(value="/insertState.html" , method=RequestMethod.POST)
	public String insertState(@ModelAttribute StateVO insertState)
	{
		
		try {
			state.insertState(insertState);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return ("redirect:/addState.html");	
		
		
		
	}
}
