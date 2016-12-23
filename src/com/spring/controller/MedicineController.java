package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MedicineController {


	@RequestMapping(value="/viewMedicine.html" , method=RequestMethod.GET)
	public String loadMedicine()
	{
		return("admin/viewMedicine");
		
	}

	@RequestMapping(value="/addMedicine.html" , method=RequestMethod.GET)
	public String addMedicine()
	{
		return("admin/addMedicine");
		
	}
}
