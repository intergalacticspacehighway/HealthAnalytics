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

import com.spring.DAO.SpecialityDAO;
import com.spring.DAO.UserDAO;

@Controller
public class UserController {
	
	@Autowired
	UserDAO user;
	@Autowired
	SpecialityDAO Speciality;
	
	@RequestMapping(value = "/profile.html", method = RequestMethod.GET)
	public String displayProfile(ModelMap model,HttpSession session) throws Exception
	{	
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		String name = auth.getName(); 
		model.addAttribute("username", name);
		
		List<Object> ls= this.user.getDoctor(name);
		session.setAttribute("list",ls);
		List<Object> slist = this.Speciality.getSpeciality();
		session.setAttribute("slist", slist);
		return("client/doctorProfile");
	}
	
	@RequestMapping(value = "/editImage.html", method = RequestMethod.POST)
	public String editProfileImage(@RequestParam CommonsMultipartFile file,@Param int id,@Param int id1,HttpSession session) throws Exception
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
        
        System.out.println(id1);
        List<Object> slist = this.Speciality.getSpeciality();
		session.setAttribute("slist", slist);
		return("redirect:/profile.html");
	}
	@RequestMapping(value = "/profileSettings.html", method = RequestMethod.GET)
	public String displayProfileSettings()
	{	
		
		return("client/profileSettings");
	}
}
