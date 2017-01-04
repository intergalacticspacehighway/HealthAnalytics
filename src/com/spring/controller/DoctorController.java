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
import com.spring.DAO.DoctorDAO;
import com.spring.DAO.DoctorSpecialityDAO;
import com.spring.DAO.HospitalDAO;
import com.spring.DAO.SpecialityDAO;
import com.spring.VO.DoctorHospitalVO;
import com.spring.VO.DoctorSpecialityVO;
import com.spring.VO.HospitalVO;
import com.spring.VO.SpecialityVO;

@Controller
public class DoctorController {
	
	@Autowired
	CountryDAO country;
	@Autowired	
	HospitalDAO hospital;
	@Autowired
	SpecialityDAO Speciality;
	@Autowired
	DoctorSpecialityDAO ds;
	@Autowired
	DoctorDAO doctor;
	
   
	@RequestMapping(value="/viewDoctor.html", method=RequestMethod.GET)
	public String loadDoctor(HttpSession session) throws Exception
	{
		List<Object> dslist=this.ds.getAllDoctor();
		session.setAttribute("dslist",dslist);
		List<Object> dlist=this.doctor.getAllDoctor();
		session.setAttribute("dlist",dlist);
		return ("admin/viewDoctor");
		
	}
	
	@RequestMapping(value="/addDoctor.html", method=RequestMethod.GET)
	public ModelAndView addDoctor(HttpSession session) throws Exception
	{
		List<Object> list = this.country.getCountry();
		session.setAttribute("list", list);
		List<Object> slist = this.Speciality.getSpeciality();
		session.setAttribute("slist", slist);
		List<Object> hospitalList = this.hospital.getAllHospital();
		session.setAttribute("hospitalList",hospitalList);
		session.setAttribute("slist", slist);
		return new ModelAndView("admin/addDoctor","insertDoctorSpeciality",new DoctorSpecialityVO());
		
	}
	@RequestMapping(value="/insertDoctor.html" , method=RequestMethod.POST)
	public ModelAndView insertDoctor(@ModelAttribute DoctorSpecialityVO insertDoctorSpeciality,@Param String specMenu, @Param String hospitalMenu) throws Exception
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
		String[] hospitalId = hospitalMenu.split(",");
		for(int i=0;i<hospitalId.length;i++)
		{
			DoctorHospitalVO doctorHospital=new DoctorHospitalVO();
			doctorHospital.setDoctor(insertDoctorSpeciality.doctor);
			int x=Integer.parseInt(hospitalId[i]);
			HospitalVO hospitalVO = new HospitalVO();
			hospitalVO.setHospitalId(x);
			
			doctorHospital.setHospital(hospitalVO);
			doctorHospital.setIsActive(insertDoctorSpeciality.getIsActive());
		this.hospital.insertHospital(doctorHospital);
		}
		
		
		return new ModelAndView("redirect:/addDoctor.html");
		
	}
	
	@RequestMapping(value="/deleteDoctor.html" , method = RequestMethod.GET)
	public String deleteDoctor(@Param int doctorId) throws Exception
	{
		this.doctor.deleteDoctor(doctorId);
		this.ds.inActiveDoctor(doctorId);
		return ("redirect:/viewDoctor.html");
		
	}
	
	@RequestMapping(value="/editDoctor.html" , method=RequestMethod.GET)
	public ModelAndView editDoctor(@Param String doctorId, HttpSession session) throws Exception
	{
		List<DoctorSpecialityVO> list=this.ds.getDoctor(doctorId);
		
		StringBuilder sb = new StringBuilder();
		for(DoctorSpecialityVO h : list)
		{
			sb.append(h.getSpeciality().getSpecialityId()).append(",");
		}
		int deletecomma=sb.length() - 1;
		sb.deleteCharAt(deletecomma);
		//List<DoctorHospitalVO> list=this.dh.getDoctor(doctorId);
		
		StringBuilder s = new StringBuilder();
		
		
		List<SpecialityVO> slist=this.Speciality.getRestSpeciality(sb.toString());
		List<Object> clist=this.country.getCountry();
		
		session.setAttribute("list",list);
		session.setAttribute("sList",slist);
		session.setAttribute("cList",clist);
		return new ModelAndView("admin/editDoctor","editDoctorSpeciality",new DoctorSpecialityVO());
		
	}
}