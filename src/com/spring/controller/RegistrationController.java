package com.spring.controller;


import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.InsertDAO;
import com.spring.VO.LoginVO;
import com.spring.VO.RegistrationVO;

@Controller
public class RegistrationController {

	@Autowired	
	private InsertDAO insert;
	@RequestMapping(value="/registration.html" , method=RequestMethod.GET)
	public ModelAndView loadRegistration()
	{	
		
		
		return new ModelAndView("client/registration","insertUser", new RegistrationVO());
		
	}
	@RequestMapping(value="/register.html" , method=RequestMethod.POST)
	public String registerUser(@ModelAttribute RegistrationVO insertUser, @Param String userName,
			@Param String password, @Param String userType,@Param String gender) throws Exception
	{	
		LoginVO login = new LoginVO();
		login.setUserName(userName);
		login.setPassword(password);
		login.setUserType(userType);
		insert.insertObject(login);
		insertUser.setLogin(login);
		insertUser.setGender(gender);
		insert.insertObject(insertUser);
		
		return("redirect:/login.html");
		
	}
	@RequestMapping(value="/xyz.html" , method=RequestMethod.GET)
	public String login(){
		return ("client/login");
	}
	
}
