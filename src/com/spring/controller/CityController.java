package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.CityDAO;
import com.spring.DAO.CountryDAO;
import com.spring.DAO.StateDAO;
import com.spring.VO.CityVO;
import com.spring.VO.StateVO;

@Controller
public class CityController {
	@Autowired
	CityDAO city;
	@Autowired
	StateDAO state;
	@Autowired
	CountryDAO country;

	@RequestMapping(value = "/addCity.html", method = RequestMethod.GET)
	public ModelAndView addCity(HttpSession session) {
		List<Object> countryList;
		try {
			countryList = this.country.getCountry();
			session.setAttribute("countryList", countryList);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {
			List<Object> stateList = this.state.getAllState();
			session.setAttribute("stateList", stateList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ModelAndView("admin/addCity", "insertCity", new CityVO());
	}

	@RequestMapping(value = "/viewCity.html", method = RequestMethod.GET)
	public String loadCity() {
		return ("admin/viewCity");
	}

	@RequestMapping(value = "/insertCity.html", method = RequestMethod.POST)
	public String insertCity(@ModelAttribute CityVO insertCity) {
		city.insertCity(insertCity);
		return ("redirect:/addCity.html");
	}

}
