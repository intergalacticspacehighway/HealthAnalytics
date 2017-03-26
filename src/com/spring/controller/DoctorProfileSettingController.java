package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.DAO.AccountSettingDAO;
import com.spring.DAO.UserDAO;

@Controller
public class DoctorProfileSettingController {

	@Autowired
	AccountSettingDAO accountsetting;
	@Autowired 
	UserDAO doctor;
	
	@RequestMapping(value="/accountSettings.html",method=RequestMethod.GET)
	public String accountSetting(ModelMap model,HttpSession session) throws Exception
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		List authoritesname = (List) auth.getAuthorities();
		model.addAttribute("authoritesname",authoritesname);
		model.addAttribute("username", name);
		List<Object> doctorlist=this.doctor.getDoctor(name);
		session.setAttribute("doctorlist",doctorlist);
		return "client/doctorProfileSettings";
		
	}
}
