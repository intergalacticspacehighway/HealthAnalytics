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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.CityDAO;
import com.spring.DAO.CountryDAO;
import com.spring.DAO.DoctorHospitalDAO;
import com.spring.DAO.SpecialityDAO;
import com.spring.DAO.StateDAO;
import com.spring.DAO.SymptomDAO;
import com.spring.DAO.UserDAO;
import com.spring.VO.CityVO;
import com.spring.VO.ClinicVO;
import com.spring.VO.CountryVO;
import com.spring.VO.DoctorClinicVO;
import com.spring.VO.DoctorHospitalVO;
import com.spring.VO.DoctorSpecialityVO;
import com.spring.VO.DoctorVO;
import com.spring.VO.HospitalVO;
import com.spring.VO.PatientRecordVO;
import com.spring.VO.PatientVO;
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
	@Autowired
	SymptomDAO symptom;
	@Autowired
	DoctorHospitalDAO doctorhospital;
	
	@RequestMapping(value = "/doctorProfile.html", method = RequestMethod.GET)
	public String displayProfile(ModelMap model,HttpSession session) throws Exception
	{	
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		List authoritesname = (List) auth.getAuthorities();
		model.addAttribute("username", name);
		model.addAttribute("authoritesname",authoritesname);
		List<DoctorHospitalVO> doctorhospital = this.doctorhospital.getDoctorHospital(name);
		session.setAttribute("doctorhospital",doctorhospital);
		List<Object> doctorclinic = this.user.getDoctorClinic(name);
		session.setAttribute("doctorclinic",doctorclinic);
		
		
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
        
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		List name = (List) auth.getAuthorities();
		if(name.get(0).toString().equals("ROLE_DOCTOR"))
		{
			return("redirect:/doctorProfile.html");
		}
		else if(name.get(0).toString().equals("ROLE_USER"))
		{
			return("redirect:/patientProfile.html");
		}
		return null;
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
		
		
		return("redirect:/doctorProfile.html");
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
		return("redirect:/doctorProfile.html");
		
	}
	
	@RequestMapping(value="viewDoctorHosptial.html", method=RequestMethod.GET)
	public ModelAndView viewDoctorHospital(HttpSession session,ModelMap model,@Param int id) throws Exception
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		List authoritesname = (List) auth.getAuthorities();
		model.addAttribute("username", name);
		model.addAttribute("authoritesname",authoritesname);
		List<Object> viewHospital = this.doctorhospital.getHospital(id); 
		session.setAttribute("hospitallist", viewHospital);
		List<Object> clist = this.country.getCountry();
		session.setAttribute("clist", clist);
		return new ModelAndView("client/viewDoctorHospital","editDoctorhospital",new HospitalVO());
		
	}
	
	@RequestMapping(value="editDoctorHospital.html", method=RequestMethod.POST)
	public String editDoctorHospital(@Param int hospitalId,@Param String hospitalName,@Param String hospitalAddress,@Param int hospitalZipCode,@Param String hospitalEmail,@Param String hospitalWebsite,@Param String hospitalPhone,@Param int countryMenu,@Param int stateMenu,@Param int cityMenu) throws Exception
	{
		this.doctorhospital.editDoctorhospital(hospitalId);
		return "redirect:/viewDoctorHospital.html";
		
	}
	
	@RequestMapping(value="deleteDoctorHospital.html", method=RequestMethod.GET)
	public String deleteDoctorHospital(@Param int hospitalid) throws Exception
	{
		this.doctorhospital.deleteDoctorHospital(hospitalid);
		this.doctorhospital.deleteHospital(hospitalid);
		
		return("redirect:/doctorProfile.html");
	}
	
	@RequestMapping(value="/addDoctorClinic.html",method=RequestMethod.POST)
	public String insertDoctorClinic(@Param String clinicName,@Param int doctorid,@Param String clinicAddress,@Param int clinicPostalCode,@Param String clinicEmailId,@Param String clinicWebsite,@Param String clinicPhoneNo,@Param int countryMenu,@Param int stateMenu1,@Param int cityMenu1 )
	{
		CountryVO country=new CountryVO();
		country.setCountryId(countryMenu);
		StateVO state=new StateVO();
		state.setStateId(stateMenu1);
		CityVO city=new CityVO();
		city.setCityId(cityMenu1);
		ClinicVO clinic =new ClinicVO();
		clinic.setCountry(country);
		clinic.setState(state);
		clinic.setCity(city);
		clinic.setClinicName(clinicName);
		clinic.setClinicAddress(clinicAddress);
		clinic.setClinicEmailId(clinicEmailId);
		clinic.setClinicPhoneNo(clinicPhoneNo);
		clinic.setClinicPostalCode(clinicPostalCode);
		clinic.setClinicWebsite(clinicWebsite);
		this.user.insertDoctorSpeciality(clinic);
		DoctorVO doctor=new DoctorVO();
		doctor.setDoctorId(doctorid);
		DoctorClinicVO doctorclinic=new DoctorClinicVO();
		doctorclinic.setDoctor(doctor);
		doctorclinic.setClinic(clinic);
		this.user.insertDoctorSpeciality(doctorclinic);
		
		
		return("redirect:/doctorProfile.html");
		
	}
	@RequestMapping(value="/viewDoctorClinic.html" , method=RequestMethod.GET)
	public String viewDoctorClinic(HttpSession session,ModelMap model,@Param int id) throws Exception
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		List authoritesname = (List) auth.getAuthorities();
		model.addAttribute("username", name);
		model.addAttribute("authoritesname",authoritesname);
		List<Object> viewClinic = this.user.viewClinic(id);
				session.setAttribute("clinicList", viewClinic);
		return "client/viewDoctorClinic";
		
	}
	@RequestMapping(value="/patientProfile.html",method=RequestMethod.GET)
	public String patientProfile(ModelMap model,HttpSession session) throws Exception
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		List authoritesname = (List) auth.getAuthorities();
		model.addAttribute("username", name);
		model.addAttribute("authoritesname",authoritesname);
		
		List<Object> patientlist =this.user.getPatient(name);
		session.setAttribute("patientList",patientlist);
		List<Object> patientrecordList =this.user.getPatientRecord(name);
		session.setAttribute("patientrecordList",patientrecordList);
		return "client/patientProfile";
		
	}
	@RequestMapping(value="/patientRecord.html" , method=RequestMethod.GET)
	public ModelAndView patientRecord(ModelMap model,HttpSession session) throws Exception
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		List authoritesname = (List) auth.getAuthorities();
		model.addAttribute("username", name);
		model.addAttribute("authoritesname",authoritesname);
		List<Object> patientList=this.user.getPatient(name);
		session.setAttribute("patientList",patientList);
		
		return new ModelAndView("client/patientRecord","patientRecord", new PatientRecordVO());
		
	}
	@RequestMapping(value="/addpatientRecord.html" , method=RequestMethod.POST)
	public String addPatientRecord(@ModelAttribute PatientRecordVO patientRecord)
	{
		
		this.user.insertDoctorSpeciality(patientRecord);
		return "redirect:/patientProfile.html";
		
	}
	
	@RequestMapping(value="/viewPatientRecord.html" , method=RequestMethod.GET)
	public String viewPatientRecord(ModelMap model,HttpSession session) throws Exception
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		List authoritesname = (List) auth.getAuthorities();
		model.addAttribute("username", name);
		model.addAttribute("authoritesname",authoritesname);
		List<Object> patientrecordList =this.user.getPatientRecord(name);
		session.setAttribute("patientrecordList",patientrecordList);
		
		return "client/viewPatientRecord";
		
	}
	
}
