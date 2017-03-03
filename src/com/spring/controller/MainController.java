package com.spring.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.DAO.SpecialityDAO;
import com.sun.jersey.api.core.HttpResponseContext;

@Controller
public class MainController {

	@Autowired
	SpecialityDAO speciality;
	
	@RequestMapping(value="/index.html" , method=RequestMethod.GET)
public String loadIndex(HttpServletResponse response,HttpSession session ) throws Exception
{		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		List name = (List) auth.getAuthorities();
		System.out.println(name);
		if(name.get(0).toString().equals("ROLE_USER") || name.get(0).toString().equals("ROLE_DOCTOR")){
			System.out.println(name);
			response.sendRedirect("home.html");
			return null;
		}
		else if(name.get(0).toString().equals("ROLE_ADMIN")	){
			return("redirect:/admin/index.html");
		}
		List<Object> specialitylist=this.speciality.getSpeciality();
		session.setAttribute("specialitylist",specialitylist);
		return("client/home");
}
	
	@RequestMapping(value="/admin/index.html" , method=RequestMethod.GET)
public String loadIndex2()
{
		return("admin/index");
}
	
	@RequestMapping(value="/listview.html" , method=RequestMethod.GET)
public String loadlistview()
	{
			return("client/listview");
	}
	@RequestMapping(value="/gridview.html" , method=RequestMethod.GET)
	public String loadgridview()
	{
			return("client/gridview");
	}
	@RequestMapping(value="/contactus.html" , method=RequestMethod.GET)
	public String loadcontactus()
	{
			return("client/contactus");
	}
	@RequestMapping(value="/bloglist.html" , method=RequestMethod.GET)
	public String loadbloglist()
	{
			return("client/bloglist");
	}
	@RequestMapping(value="/bloggrid.html" , method=RequestMethod.GET)
	public String loadbloggrid()
	{
			return("client/bloggrid");
	}
	@RequestMapping(value="/blogdetail.html" , method=RequestMethod.GET)
	public String loadblogdetail()
	{
			return("client/blogdetail");
	}
	@RequestMapping(value="/home.html" , method=RequestMethod.GET)
	public String loadhome(ModelMap model,HttpSession session) throws Exception
	{		
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String name = auth.getName(); 
			List authoritesname = (List) auth.getAuthorities();
			model.addAttribute("authoritesname",authoritesname);
			model.addAttribute("username", name);
			List<Object> specialitylist=this.speciality.getSpeciality();
			session.setAttribute("specialitylist",specialitylist);
			return("client/home");
	}
}
