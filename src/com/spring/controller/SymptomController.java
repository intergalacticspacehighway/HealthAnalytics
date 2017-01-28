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

import com.spring.DAO.SymptomDAO;
import com.spring.VO.MedicineVO;
import com.spring.VO.SymptomVO;

@Controller
@RequestMapping("/admin")
public class SymptomController {

	@Autowired
	SymptomDAO symptom;

	@RequestMapping(value="/viewSymptom.html" , method=RequestMethod.GET)
	public String loadSymptom(HttpSession session) throws Exception
	{
		List<Object> list=this.symptom.getSymptom();
		session.setAttribute("list",list);
		return("admin/viewSymptom");
		
	}

	@RequestMapping(value="/addSymptom.html" , method=RequestMethod.GET)
	public ModelAndView addSymptom()
	{
		return new ModelAndView("admin/addSymptom","insertSymptom",new SymptomVO());
		
	}
	@RequestMapping(value="/insertSymptom.html",method=RequestMethod.POST)
	public ModelAndView insertSymptom(@ModelAttribute SymptomVO insertSymptom)
	{
		try {
			this.symptom.insertSymptom(insertSymptom);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("redirect:/addSymptom.html");
	}
	
	@RequestMapping(value="/deleteSymptom.html",method=RequestMethod.GET)
	public String deleteSymptom(@Param int id)
	{
		this.symptom.deleteSymptom(id);
		return("redirect:/viewSymptom.html");
		
	}
	
	@RequestMapping(value="/deleteSymptomisActive.html" , method=RequestMethod.GET)
	public String updateisActive(@Param int id) throws Exception
	{
		this.symptom.updateIsactive(id);
		
		return("redirect:/viewSymptom.html");
		
	}
	
	@RequestMapping(value = "/editSymptom.html", method = RequestMethod.GET)
	public ModelAndView editMedicine(@Param int id, HttpSession session) {
		List<Object> list;
		try {
			list = this.symptom.editSymptom(id);
			session.setAttribute("list",list);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ModelAndView("admin/editSymptom", "updateSymptom",new SymptomVO());
	}
	
	@RequestMapping(value="/updateSymptom.html" , method=RequestMethod.POST)
	public String updateSymptom(@ModelAttribute SymptomVO updateSymptom) throws Exception 
	{
		this.symptom.insertSymptom(updateSymptom);
		return("redirect:/viewSymptom.html");
		
	}
}
