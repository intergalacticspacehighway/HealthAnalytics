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

import com.spring.DAO.CountryDAO;
import com.spring.DAO.HospitalDAO;
import com.spring.DAO.SpecialityDAO;
import com.spring.VO.DoctorSpecialityVO;
import com.spring.VO.SpecialityVO;

@Controller
public class DoctorController {
	
	@Autowired
	CountryDAO country;
	@Autowired
	HospitalDAO hospital;
	@Autowired
	SpecialityDAO Speciality;
   
	@RequestMapping(value="/viewDoctor.html", method=RequestMethod.GET)
	public String loadDoctor()
	{
		return ("admin/viewDoctor");
		
	}
	
	@RequestMapping(value="/addDoctor.html", method=RequestMethod.GET)
	public ModelAndView addDoctor(HttpSession session) throws Exception
	{
		List<Object> list = this.country.getCountry();
		session.setAttribute("list", list);
		List<Object> slist = this.Speciality.getSpeciality();
		session.setAttribute("slist", slist);
		return new ModelAndView("admin/addDoctor","insertDoctorSpeciality",new DoctorSpecialityVO());
		
	}
	@RequestMapping(value="/insertDoctor.html" , method=RequestMethod.POST)
	public ModelAndView insertDoctor(@ModelAttribute DoctorSpecialityVO insertDoctorSpeciality,@Param String specMenu) throws Exception
	{
		this.hospital.insertHospital(insertDoctorSpeciality.doctor);
		String[] specid = specMenu.split(",");
		for(int i=0;i<specid.length;i++)
		{
			DoctorSpecialityVO DoctorSpeciality=new DoctorSpecialityVO();
			DoctorSpeciality.setDoctor(insertDoctorSpeciality.doctor);
			int x=Integer.parseInt(specid[i]);
			SpecialityVO speciality=new SpecialityVO();
			speciality.setSpecialityId(x);
			
			DoctorSpeciality.setSpeciality(speciality);
			DoctorSpeciality.setIsActive(insertDoctorSpeciality.getIsActive());
		this.hospital.insertHospital(DoctorSpeciality);
		}
		
		return new ModelAndView("redirect:/addDoctor.html");
		
	}
}