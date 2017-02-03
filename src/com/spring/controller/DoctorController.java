package com.spring.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.CountryDAO;
import com.spring.DAO.DoctorDAO;
import com.spring.DAO.DoctorHospitalDAO;
import com.spring.DAO.DoctorSpecialityDAO;
import com.spring.DAO.HospitalDAO;
import com.spring.DAO.SpecialityDAO;
import com.spring.VO.DoctorHospitalVO;
import com.spring.VO.DoctorSpecialityVO;
import com.spring.VO.HospitalVO;
import com.spring.VO.SpecialityVO;

@Controller
@RequestMapping("/admin")
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
	DoctorHospitalDAO dh;
	@Autowired
	DoctorDAO doctor;

	@RequestMapping(value = "/viewDoctor.html", method = RequestMethod.GET)
	public String loadDoctor(HttpSession session) throws Exception {

		List<DoctorHospitalVO> doctorHospitalList = this.dh.getAllDoctor();
		session.setAttribute("doctorHospitalList", doctorHospitalList);
		List<Object> dslist = this.ds.getAllDoctor();
		session.setAttribute("dslist", dslist);
		List<Object> dlist = this.doctor.getAllDoctor();
		session.setAttribute("dlist", dlist);
		return ("admin/viewDoctor");

	}

	@RequestMapping(value = "/addDoctor.html", method = RequestMethod.GET)
	public ModelAndView addDoctor(HttpSession session) throws Exception {
		List<Object> list = this.country.getCountry();
		session.setAttribute("list", list);
		List<Object> slist = this.Speciality.getSpeciality();
		session.setAttribute("slist", slist);
		List<Object> hospitalList = this.hospital.getAllHospital();
		session.setAttribute("hospitalList", hospitalList);
		session.setAttribute("slist", slist);
		return new ModelAndView("admin/addDoctor", "insertDoctorSpeciality",
				new DoctorSpecialityVO());

	}

	@RequestMapping(value = "/insertDoctor.html", method = RequestMethod.POST)
	public ModelAndView insertDoctor(
			@ModelAttribute DoctorSpecialityVO insertDoctorSpeciality,
			@Param String specMenu, @Param String hospitalMenu,@RequestParam CommonsMultipartFile file,HttpSession session)
			throws Exception {


		   String path=session.getServletContext().getRealPath("/doc");  
	        String filename=file.getOriginalFilename(); 
	        System.out.println(path+" "+filename); 
	        try{  
	            byte barr[]=file.getBytes();  
	              
	            BufferedOutputStream bout=new BufferedOutputStream(  
	                     new FileOutputStream(path+"/"+filename));  
	            bout.write(barr);  
	            bout.flush();  
	            bout.close();  
	        }
	  catch(Exception e){System.out.println(e);}  
	       this.hospital.insertHospital(insertDoctorSpeciality.doctor);
      
		String[] specid = specMenu.split(",");
		for (int i = 0; i < specid.length; i++) {
			DoctorSpecialityVO DoctorSpeciality = new DoctorSpecialityVO();
			DoctorSpeciality.setDoctor(insertDoctorSpeciality.doctor);
			int x = Integer.parseInt(specid[i]);
			SpecialityVO speciality = new SpecialityVO();
			speciality.setSpecialityId(x);

			DoctorSpeciality.setSpeciality(speciality);
			DoctorSpeciality.setIsActive(insertDoctorSpeciality.getIsActive());
			this.hospital.insertHospital(DoctorSpeciality);
		}
		String[] hospitalId = hospitalMenu.split(",");
		for (int i = 0; i < hospitalId.length; i++) {
			DoctorHospitalVO doctorHospital = new DoctorHospitalVO();
			doctorHospital.setDoctor(insertDoctorSpeciality.doctor);
			int x = Integer.parseInt(hospitalId[i]);
			HospitalVO hospitalVO = new HospitalVO();
			hospitalVO.setHospitalId(x);

			doctorHospital.setHospital(hospitalVO);
			doctorHospital.setIsActive(insertDoctorSpeciality.getIsActive());
			this.hospital.insertHospital(doctorHospital);
		}

		return new ModelAndView("redirect:/admin/addDoctor.html");

	}

	@RequestMapping(value = "/deleteDoctor.html", method = RequestMethod.GET)
	public String deleteDoctor(@Param int doctorId) throws Exception {
		this.doctor.deleteDoctor(doctorId);
		this.ds.inActiveDoctor(doctorId);
		return ("redirect:/viewDoctor.html");

	}

	@RequestMapping(value = "/editDoctor.html", method = RequestMethod.GET)
	public ModelAndView editDoctor(@Param String doctorId, HttpSession session)
			throws Exception {
		// Get From HospitalSpecialityVO where docID is taken from edit link
		List<DoctorSpecialityVO> list = this.ds.getDoctor(doctorId);

		StringBuilder sb = new StringBuilder();
		for (DoctorSpecialityVO h : list) {
			sb.append(h.getSpeciality().getSpecialityId()).append(",");
		}
		int deletecomma = sb.length() - 1;

		sb.deleteCharAt(deletecomma);

		// speciality not in (sb.toString)
		List<SpecialityVO> slist = this.Speciality.getRestSpeciality(sb
				.toString());

		// Get from DoctorHospitalVO where DocID is taken from edit link
		List<DoctorHospitalVO> doctorHospitalList = this.dh.getDoctor(doctorId);

		StringBuilder s = new StringBuilder();
		for (DoctorHospitalVO h : doctorHospitalList) {
			s.append(h.getHospital().getHospitalId()).append(",");
		}
		int deleteComma = s.length() - 1;

		s.deleteCharAt(deleteComma);

		// hospitals not in (s.toString)
		List<HospitalVO> restHospitalList = this.hospital.getRestHospital(s
				.toString());

		// List<Object> clist=this.country.getCountry();
		session.setAttribute("doctorHospitalList", doctorHospitalList);
		session.setAttribute("restHospitalList", restHospitalList);
		session.setAttribute("list", list);
		session.setAttribute("sList", slist);
		// session.setAttribute("cList",clist);
		return new ModelAndView("admin/editDoctor", "editDoctorSpeciality",
				new DoctorSpecialityVO());

	}

	@RequestMapping(value = "/updateDoctor.html", method = RequestMethod.POST)
	public ModelAndView updateDoctor(@ModelAttribute DoctorSpecialityVO editDoctorSpeciality, @Param String specMenu, @Param String hospitalMenu, HttpSession session) throws Exception{
			

		// no use String[] specId = specMenu.split(",");
		List<DoctorSpecialityVO> docSpeciality = (List) session.getAttribute("list");
		int[] testArray = new int[docSpeciality.size()];
		String[] specId = specMenu.split(",");

		String[] hospId = hospitalMenu.split(",");
		for (int i = 0; i < docSpeciality.size(); i++) {
			testArray[i] = docSpeciality.get(i).getSpeciality()
					.getSpecialityId();
		}

		String testArrayString = Arrays.toString(testArray);
		String specMenuTest = Arrays.toString(specId);
		System.out.println(testArrayString);
		System.out.println(specMenuTest);

		// session.getAttribute("list");
		// System.out.println(hospSpeciality);
		this.hospital.insertHospital(editDoctorSpeciality.doctor);

		// this.doctorSpeciality.updateIsActive(editHospitalSpeciality
		// .getHospital().getHospitalId());

		if (!specMenuTest.equals(testArrayString)) {

			this.ds.deleteDoctor(editDoctorSpeciality.doctor.getDoctorId());

			this.hospital.insertHospital(editDoctorSpeciality.doctor);
			for (int i = 0; i < specId.length; i++) {

				DoctorSpecialityVO doctorSpecialityVO = new DoctorSpecialityVO();
				doctorSpecialityVO.setDoctor(editDoctorSpeciality.doctor);
				int x = Integer.parseInt(specId[i]);
				SpecialityVO specialityVO = new SpecialityVO();
				specialityVO.setSpecialityId(x);
				doctorSpecialityVO.setSpeciality(specialityVO);
				doctorSpecialityVO.setIsActive(editDoctorSpeciality.getDoctor()
						.getIsActive());

				this.hospital.insertHospital(doctorSpecialityVO);

			}
		}
		List<DoctorHospitalVO> doctorHospitalVOs = (List) session.getAttribute("doctorHospitalList");
		int[] testArray2 = new int[doctorHospitalVOs.size()];
		for(int j = 0; j<doctorHospitalVOs.size(); j++){
			testArray2[j] = doctorHospitalVOs.get(j).getHospital().getHospitalId();
			
		}
		String testArrayString2 = Arrays.toString(testArray2);
		
		String hospMenuString = Arrays.toString(hospId);
		System.out.println(testArrayString2);
		System.out.println(hospMenuString);
		
		if(!testArrayString2.equals(hospMenuString))
		{		
			this.dh.deleteDoctor(editDoctorSpeciality.doctor.getDoctorId());
	
			for (int i = 0; i < hospId.length; i++) {
	
				DoctorHospitalVO doctorHospitalVO = new DoctorHospitalVO();
				doctorHospitalVO.setDoctor(editDoctorSpeciality.doctor);
				int x = Integer.parseInt(hospId[i]);
				HospitalVO hospitalVO = new HospitalVO();
				hospitalVO.setHospitalId(x);
				doctorHospitalVO.setHospital(hospitalVO);
				doctorHospitalVO.setIsActive(editDoctorSpeciality.getDoctor()
						.getIsActive());
	
				this.hospital.insertHospital(doctorHospitalVO);
			}
	
			

		

		}
		return new ModelAndView("redirect:/viewDoctor.html");
	}
	@RequestMapping(value="/deleteDoctorisActive.html" , method=RequestMethod.GET)
	public String updateisActive(@Param int id) throws Exception
	{
		this.doctor.updateIsactive(id);
		
		return("redirect:/viewDoctor.html");
		
	}
	
}
