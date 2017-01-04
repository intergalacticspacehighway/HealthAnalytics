package com.spring.controller;

import java.util.Arrays;
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
import com.spring.DAO.HospitalSpecialityDAO;
import com.spring.DAO.SpecialityDAO;
import com.spring.VO.HospitalSpecialityVO;
import com.spring.VO.HospitalVO;
import com.spring.VO.SpecialityVO;

@Controller
public class HospitalController {

	@Autowired
	CountryDAO country;
	@Autowired
	HospitalDAO hospital;
	@Autowired
	SpecialityDAO Speciality;
	@Autowired
	HospitalSpecialityDAO hospitalSpeciality;

	@RequestMapping(value = "/editHospital.html", method = RequestMethod.GET)
	public ModelAndView editHospital(@Param String hospitalId,
			HttpSession session) throws Exception {

		// System.out.println(hospitalName);

		List<HospitalSpecialityVO> list = this.hospitalSpeciality
				.getHospital(hospitalId);
		StringBuilder specialityList = new StringBuilder();
		for (HospitalSpecialityVO h : list) {
			specialityList.append(h.getSpeciality().getSpecialityId()).append(
					",");

		}
		int deleteLastComma = specialityList.length() - 1;
		specialityList.deleteCharAt(deleteLastComma);
		System.out.println(specialityList);

		List cList = this.country.getCountry();

		List<SpecialityVO> slist = this.Speciality
				.getRestSpeciality(specialityList.toString());

		session.setAttribute("sList", slist);
		session.setAttribute("list", list);
		session.setAttribute("cList", cList);

		return new ModelAndView("admin/editHospital", "editHospitalSpeciality",
				new HospitalSpecialityVO());

	}

	@RequestMapping(value = "/viewHospital.html", method = RequestMethod.GET)
	public String loadHospital(HttpSession session) {
		try {
			List list = hospitalSpeciality.getAllHospital();
			List hospitalList = hospital.getAllhospital();
			// List hospitalList = hospitalSpeciality.getAllHospital();
			session.setAttribute("list", list);
			session.setAttribute("hospitalList", hospitalList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return ("admin/viewHospital");

	}

	@RequestMapping(value = "/addHospital.html", method = RequestMethod.GET)
	public ModelAndView addHospital(HttpSession session) throws Exception {
		List<Object> list = this.country.getCountry();
		session.setAttribute("list", list);
		List<SpecialityVO> slist = this.Speciality.getSpeciality();
		session.setAttribute("slist", slist);
		return new ModelAndView("admin/addHospital",
				"insertHospitalSpeciality", new HospitalSpecialityVO());

	}

	@RequestMapping(value = "/insertHospital.html", method = RequestMethod.POST)
	public ModelAndView insertHospital(
			@ModelAttribute HospitalSpecialityVO insertHospitalSpeciality,
			@Param String specMenu) {
		try {

			String[] specId = specMenu.split(",");

			this.hospital.insertHospital(insertHospitalSpeciality.hospital);
			for (int i = 0; i < specId.length; i++) {

				HospitalSpecialityVO hospitalSpecialityVO = new HospitalSpecialityVO();
				hospitalSpecialityVO
						.setHospital(insertHospitalSpeciality.hospital);
				int x = Integer.parseInt(specId[i]);
				SpecialityVO specialityVO = new SpecialityVO();
				specialityVO.setSpecialityId(x);
				hospitalSpecialityVO.setSpeciality(specialityVO);
				hospitalSpecialityVO.setIsActive(insertHospitalSpeciality
						.getIsActive());

				this.hospital.insertHospital(hospitalSpecialityVO);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ModelAndView("redirect:/addHospital.html");

	}

	@RequestMapping(value = "/updateHospital.html", method = RequestMethod.POST)
	public ModelAndView updateHospital(
			@ModelAttribute HospitalSpecialityVO editHospitalSpeciality,
			@Param String specMenu, HttpSession session) throws Exception {

		// no use String[] specId = specMenu.split(",");
		List<HospitalSpecialityVO> hospSpeciality = (List) session
				.getAttribute("list");
		int[] testArray = new int[hospSpeciality.size()];
		String[] specId = specMenu.split(",");
		for (int i = 0; i < hospSpeciality.size(); i++) {
			testArray[i] = hospSpeciality.get(i).getSpeciality()
					.getSpecialityId();
		}
		String testArrayString = Arrays.toString(testArray);
		String specMenuTest = Arrays.toString(specId);
		System.out.println(testArrayString);
		System.out.println(specMenuTest);

		// session.getAttribute("list");
		// System.out.println(hospSpeciality);
		this.hospital.insertHospital(editHospitalSpeciality.hospital);

		this.hospitalSpeciality.updateIsActive(editHospitalSpeciality
				.getHospital().getHospitalId());

		if (!specMenuTest.equals(testArrayString)) {

			this.hospitalSpeciality
					.deleteHospital(editHospitalSpeciality.hospital
							.getHospitalId());

			try {

				this.hospital.insertHospital(editHospitalSpeciality.hospital);
				for (int i = 0; i < specId.length; i++) {

					HospitalSpecialityVO hospitalSpecialityVO = new HospitalSpecialityVO();
					hospitalSpecialityVO
							.setHospital(editHospitalSpeciality.hospital);
					int x = Integer.parseInt(specId[i]);
					SpecialityVO specialityVO = new SpecialityVO();
					specialityVO.setSpecialityId(x);
					hospitalSpecialityVO.setSpeciality(specialityVO);
					hospitalSpecialityVO.setIsActive(editHospitalSpeciality
							.getHospital().getIsActive());

					this.hospital.insertHospital(hospitalSpecialityVO);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return new ModelAndView("redirect:/viewHospital.html");

		// }

		/*
		 * this.hospital.insertHospital(editHospitalSpeciality.hospital); for
		 * (int i = 0; i < specId.length; i++) {
		 * 
		 * int x = Integer.parseInt(specId[i]); SpecialityVO specialityVO = new
		 * SpecialityVO(); specialityVO.setSpecialityId(x);
		 * editHospitalSpeciality.setIsActive(insertHospitalSpeciality );
		 * 
		 * this.hospital.insertHospital(editHospitalSpeciality); }
		 */
		// return new ModelAndView("redirect:/viewHospital.html");

	}

	@RequestMapping(value = "/deleteHospital.html", method = RequestMethod.GET)
	public String deleteHospital(@Param int hospitalId) throws Exception {
		this.hospital.deleteHospital(hospitalId);
		this.hospitalSpeciality.inActiveHospital(hospitalId);
		System.out.println("Done!!");
		return ("redirect:/viewHospital.html");
	}

}
