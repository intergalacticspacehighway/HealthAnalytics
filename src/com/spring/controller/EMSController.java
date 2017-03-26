package com.spring.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.DAO.UserDAO;
import com.spring.VO.EMSRequestVO;
import com.spring.VO.PatientVO;

@Controller
public class EMSController {
	@Autowired
	SimpMessagingTemplate SimpMessagingTemplate;
	@Autowired
	UserDAO userDao;
	
	@MessageMapping("/chat")
	// @SendTo("/topic/messages")
	public void send(Principal principal, EMSRequestVO request)
			throws Exception {
		System.out.println("Hello");
		System.out.println(request.getLatitude());
		String userName = principal.getName();
		request.setSender(userName);
		System.out.println(userName);

		List<Object> user = userDao.getPatient(userName);
		PatientVO patient = (PatientVO) user.get(0);
		request.setName(patient.getRegistration().getFirstName() + " "
				+ patient.getRegistration().getLastName());
		SimpMessagingTemplate.convertAndSendToUser("deepak", "/queue/chat", request);

	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String emsDashBoard(ModelMap model, Principal principal) throws Exception {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		return ("client/emsDashboard");
	}
}
