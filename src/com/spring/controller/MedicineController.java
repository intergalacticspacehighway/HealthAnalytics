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

import com.spring.DAO.MedicineDAO;
import com.spring.VO.MedicineVO;

@Controller
public class MedicineController {

	@Autowired
	MedicineDAO medicine;

	@RequestMapping(value = "/addMedicine.html", method = RequestMethod.GET)
	public ModelAndView addMedicine() {
		return new ModelAndView("admin/addMedicine", "insertMedicine",
				new MedicineVO());

	}

	@RequestMapping(value = "/insertMedicine.html", method = RequestMethod.POST)
	public ModelAndView insertMedicine(@ModelAttribute MedicineVO insertMedicine) {
		try {
			this.medicine.insertMedicine(insertMedicine);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		ModelAndView model = new ModelAndView("redirect:/addMedicine.html");

		return model;
	}

	@RequestMapping(value = "/viewMedicine.html", method = RequestMethod.GET)
	public ModelAndView viewMedicine(HttpSession session) {
		List<Object> ls;
		try {
			ls = this.medicine.getMedicine();
			session.setAttribute("list", ls);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ModelAndView("admin/viewMedicine", "editMedicine",
				new MedicineVO());
	}

	@RequestMapping(value = "/editMedicine.html", method = RequestMethod.GET)
	public ModelAndView editMedicine(@Param int id, HttpSession session) {
		List<Object> medicineList;
		try {
			medicineList = this.medicine.editMedicine(id);
			session.setAttribute("list", medicineList);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return new ModelAndView("admin/editMedicine", "updateMedicine",
				new MedicineVO());
	}

	@RequestMapping(value = "/updateMedicine.html", method = RequestMethod.POST)
	public String updateMedicine(@ModelAttribute MedicineVO updateMedicine) {
		try {
			this.medicine.insertMedicine(updateMedicine);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return ("redirect:/viewMedicine.html");

	}

	@RequestMapping(value = "/deleteMedicine.html", method = RequestMethod.GET)
	public String deleteMedicine(@Param int id)

	{
		this.medicine.deleteMedicine(id);
		return ("redirect:/viewMedicine.html");

	}
	
	@RequestMapping(value="/deleteMedicineisActive.html" , method=RequestMethod.GET)
	public String updateisActive(@Param int id) throws Exception
	{
		this.medicine.updateIsactive(id);
		
		return("redirect:/viewMedicine.html");
		
	}
}
