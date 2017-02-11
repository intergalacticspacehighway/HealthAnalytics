package com.spring.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.CityDAO;
import com.spring.DAO.CountryDAO;
import com.spring.DAO.SpecialityDAO;
import com.spring.DAO.StateDAO;
import com.spring.DAO.UserDAO;
import com.spring.VO.CityVO;
import com.spring.VO.CountryVO;
import com.spring.VO.DoctorHospitalVO;
import com.spring.VO.DoctorSpecialityVO;
import com.spring.VO.DoctorVO;
import com.spring.VO.HospitalVO;
import com.spring.VO.SpecialityVO;
import com.spring.VO.StateVO;

@Controller
public class UserController {
	
	@Autowired
	UserDAO user;
	@Autowired
	SpecialityDAO Speciality;
	@Autowired
	CountryDAO country;
	@Autowired
	StateDAO state;
	@Autowired
	CityDAO city;
	
	@RequestMapping(value = "/profile.html", method = RequestMethod.GET)
	public String displayProfile(ModelMap model,HttpSession session) throws Exception
	{	
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		model.addAttribute("username", name);
		
//		get Doctor Speciality
		
		List<DoctorSpecialityVO> dslist= this.user.getDoctorSpeciality(name);
		List<Object> clist = this.country.getCountry();
		if(dslist.isEmpty() == false)
		{
		StringBuilder sb = new StringBuilder();
		for (DoctorSpecialityVO h : dslist) {
			sb.append(h.getSpeciality().getSpecialityId()).append(",");
		}
		int deletecomma = sb.length() - 1 ;

		sb.deleteCharAt(deletecomma);
		
		List<SpecialityVO> list = this.Speciality.getRestSpeciality(sb
				.toString());
		
		session.setAttribute("dslist",dslist);
		session.setAttribute("speclist",list);
		List<Object> ls= this.user.getDoctor(name);
		session.setAttribute("list",ls);
		session.setAttribute("clist", clist);
		}
// 		get Doctor Speciality completed
		else if(dslist.isEmpty() == true)
		{
	    session.setAttribute("clist", clist);
		List<Object> ls= this.user.getDoctor(name);
		session.setAttribute("list",ls);
		List<Object> slist = this.Speciality.getSpeciality();
		session.setAttribute("slist", slist);
		}
		
		return("client/doctorProfile");
	}
	
	@RequestMapping(value = "/editImage.html", method = RequestMethod.POST)
	public String editProfileImage(@RequestParam CommonsMultipartFile file,@Param int id,HttpSession session) throws Exception
	{	
		String path=session.getServletContext().getRealPath("/doc");  
        String filename=file.getOriginalFilename(); 
       
        try{  
            byte barr[]=file.getBytes(); 
              
            BufferedOutputStream bout=new BufferedOutputStream(  
                     new FileOutputStream(path+"/"+filename));
            String s=path+"/"+filename;
            System.out.println(s);
           this.user.updateImage(id,filename);
            bout.write(barr);  
            bout.flush();  
            bout.close();  
        }
  catch(Exception e){System.out.println(e);} 
        
        List<Object> slist = this.Speciality.getSpeciality();
		session.setAttribute("slist", slist);
		return("redirect:/profile.html");
	}
	@RequestMapping(value = "/profileSettings.html", method = RequestMethod.GET)
	public String displayProfileSettings()
	{	
		
		return("client/profileSettings");
	}
	@RequestMapping(value="/addDoctorSpeciality.html", method = RequestMethod.POST)
	public String insertDoctorSpeciality(@Param String specMenu,@Param String specMenu1,@Param int doctorid,HttpSession session) throws Exception
	{	
//		 insert Doctor Speciality
		if(specMenu!=null)
		{
		String[] specid = specMenu.split(",");
		for (int i = 0; i < specid.length; i++) 
		{
			DoctorVO doctor =new DoctorVO();
			DoctorSpecialityVO DoctorSpeciality = new DoctorSpecialityVO();
			doctor.setDoctorId(doctorid);
			DoctorSpeciality.setDoctor(doctor);
			int x = Integer.parseInt(specid[i]);
			SpecialityVO speciality = new SpecialityVO();
			speciality.setSpecialityId(x);
			DoctorSpeciality.setSpeciality(speciality);
			this.user.insertDoctorSpeciality(DoctorSpeciality);
			System.out.println(specMenu1);
		}
		}
		else
		{
			
//		insert Doctor Speciality completed
//		update Doctor Speciality
		this.user.deleteDoctorSpeciality(doctorid);
		String[] specid = specMenu1.split(",");
		for (int i = 0; i < specid.length; i++) 
		{
			DoctorVO doctor =new DoctorVO();
			DoctorSpecialityVO DoctorSpeciality = new DoctorSpecialityVO();
			doctor.setDoctorId(doctorid);
			DoctorSpeciality.setDoctor(doctor);
			int x = Integer.parseInt(specid[i]);
			SpecialityVO speciality = new SpecialityVO();
			speciality.setSpecialityId(x);
			DoctorSpeciality.setSpeciality(speciality);
			this.user.insertDoctorSpeciality(DoctorSpeciality);
		}
		}
		
		
		return("redirect:/profile.html");
	}
	@RequestMapping(value="/getStateUsingAjax.html", method=RequestMethod.GET)
	public String getStateUsingAjax(@RequestParam("countryId") int countryId, HttpSession session){
		try {
			List<Object> list = state.getStateAjax(countryId);
			session.setAttribute("list", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ("client/getStateUsingAjax");
		
		
	}
	@RequestMapping(value="/getCityUsingAjax.html", method=RequestMethod.GET)
	public String getCityUsingAjax(@Param int stateId, HttpSession session){
		try {
			List<Object> list = this.city.getCityAjax(stateId);
			session.setAttribute("list", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ("client/getCityUsingAjax");
		
		
	}
	
	@RequestMapping(value="/addDoctorHospital.html",method=RequestMethod.POST)
	public String insertDoctorHospital(@Param String hospitalName,@Param int doctorid,@Param String hospitalAddress,@Param int hospitalZipCode,@Param String hospitalEmail,@Param String hospitalWebsite,@Param String hospitalPhone,@Param int countryMenu,@Param int stateMenu,@Param int cityMenu )
	{
		CountryVO country=new CountryVO();
		country.setCountryId(countryMenu);
		StateVO state=new StateVO();
		state.setStateId(stateMenu);
		CityVO city=new CityVO();
		city.setCityId(cityMenu);
		HospitalVO hospital=new HospitalVO();
		hospital.setHospitalName(hospitalName);
		hospital.setHospitalAddress(hospitalAddress);
		hospital.setHospitalEmail(hospitalEmail);
		hospital.setHospitalZipCode(hospitalZipCode);
		hospital.setHospitalWebsiteUrl(hospitalWebsite);
		hospital.setHospitalPhone(hospitalPhone);
		hospital.setCountry(country);
		hospital.setCity(city);
		hospital.setState(state);
		this.user.insertDoctorSpeciality(hospital);
		DoctorHospitalVO doctorhospital=new DoctorHospitalVO();
		DoctorVO doctor=new DoctorVO();
		doctor.setDoctorId(doctorid);
		doctorhospital.setDoctor(doctor);
		doctorhospital.setHospital(hospital);
		this.user.insertDoctorSpeciality(doctorhospital);
		return("redirect:/profile.html");
		
	}
	
}
