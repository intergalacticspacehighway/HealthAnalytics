package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.DAO.CityDAO;
import com.spring.DAO.CountryDAO;
import com.spring.DAO.StateDAO;
import com.spring.VO.CityVO;
import com.spring.VO.StateVO;

@Controller
@RequestMapping("/admin")
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
	public String loadCity(HttpSession session) throws Exception {
		
		List<Object> CityList=this.city.getCity();
		session.setAttribute("list",CityList);
		return ("admin/viewCity");
	}

	@RequestMapping(value = "/insertCity.html", method = RequestMethod.POST)
	public String insertCity(@ModelAttribute CityVO insertCity) {
		city.insertCity(insertCity);
		return ("redirect:/addCity.html");
	}
	
	@RequestMapping(value="/deleteCity.html" , method=RequestMethod.GET)
	public String deleteCity(@Param int id)
	{
		city.deleteCity(id);
		return("redirect:/viewCity.html");
		
	}
	
	@RequestMapping(value="/editCity.html" , method=RequestMethod.GET)
	public ModelAndView editCity(@Param int id, HttpSession session)
	{
		List<Object> list=this.city.editCity(id);
		session.setAttribute("CityList",list);
		return new ModelAndView("admin/editCity","updateCity",new CityVO());
		
	}
	@RequestMapping(value="updateCity.html" , method=RequestMethod.POST)
	public String updateCity(@ModelAttribute CityVO updateCity)
	{
		this.city.insertCity(updateCity);
		return("redirect:/viewCity.html");
		
	}
	
	@RequestMapping(value="/getCityUsingAjax.html", method=RequestMethod.POST)
	public String getStateUsingAjax(@Param int stateId, HttpSession session){
		try {
			List<Object> list = this.city.getCityAjax(stateId);
			session.setAttribute("list", list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return ("admin/getCityUsingAjax");
		
		
	}

	@RequestMapping(value="/deleteCityisActive.html" , method=RequestMethod.GET)
	public String updateisActive(@Param int id) throws Exception
	{
		this.city.updateIsactive(id);
		
		return("redirect:/viewCity.html");
		
	}
}
