package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.DAO.SearchDAO;
import com.spring.VO.DoctorClinicVO;

@Controller
public class SearchController {
	@Autowired
	SearchDAO searchDao;
	@RequestMapping(value = "search.html", method = RequestMethod.POST)
	public String search(ModelMap model,@Param String q,@Param int speciality,@Param int stateMenu,@Param int cityMenu1,HttpSession session) throws Exception {
		switch (q.toLowerCase()) {
		case "doctor":
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String name = auth.getName(); 
			List authoritesname = (List) auth.getAuthorities();
			if(authoritesname.get(0).toString().equals("ROLE_DOCTOR") || authoritesname.get(0).toString().equals("ROLE_USER"))
			{
			model.addAttribute("authoritesname",authoritesname);
			model.addAttribute("username", name);
			List<DoctorClinicVO> Cliniclist= this.searchDao.searchDoctor(speciality, stateMenu, cityMenu1);
			session.setAttribute("cliniclist",Cliniclist);
			}
			else
			{
			List<DoctorClinicVO> Cliniclist= this.searchDao.searchDoctor(speciality, stateMenu, cityMenu1);
			session.setAttribute("cliniclist",Cliniclist);
			}
			System.out.println(speciality);
			System.out.println(stateMenu);
			System.out.println(cityMenu1);
			return "client/listview";
		case "hospital":
			return "client/bloggrid";

		default:
			break;
		}
		
		return null;
	}
	
	@RequestMapping(value="/doctordetails.html",method=RequestMethod.GET)
	public String doctordetails(@Param int doctorId,HttpSession session) throws Exception
	{
		List<Object> doctorspecialityList=this.searchDao.viewDoctorSpeciality(doctorId);
		session.setAttribute("doctorspecialityList",doctorspecialityList);
		List<Object> doctorClinicList=this.searchDao.viewDoctorclinic(doctorId);
		session.setAttribute("doctorClinicList",doctorClinicList);
		return "client/doctorDetails";
		
	}
}
