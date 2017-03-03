package com.spring.controller;

import java.util.List;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.jboss.logging.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.DAO.UserDAO;

@Controller
public class ForgotpasswordController {

	@Autowired
	UserDAO user;
	
	@RequestMapping(value="/forgotPassword.html",method=RequestMethod.GET)
	public String forgotPassword()
	{
		return "client/verifyEmail";
		
	}
	@RequestMapping(value="/verifyEmail.html",method=RequestMethod.POST)
	public String forgetpassword(@Param String userEmail,HttpSession session)
	{
		Random ran=new Random();
		 int num=ran.nextInt(999999-100000+1);
		  String s=Integer.toString(num);
			System.out.println(s);
		session.setAttribute("code",s);
			String to=userEmail;
			Properties props = new Properties();  
			  props.put("mail.smtp.host", "smtp.gmail.com");  
			  props.put("mail.smtp.socketFactory.port", "465");  
			  props.put("mail.smtp.socketFactory.class",  
			            "javax.net.ssl.SSLSocketFactory");  
			  props.put("mail.smtp.auth", "true");  
			  props.put("mail.smtp.port", "465");  
			   
			  Session session1 = Session.getDefaultInstance(props,  
			   new javax.mail.Authenticator() {  
			   protected PasswordAuthentication getPasswordAuthentication() {  
			   return new PasswordAuthentication("parththakkar02@gmail.com","monster1234");//change accordingly  
			   }  
			  });  
			  
			  try {  
				   MimeMessage message = new MimeMessage(session1);  
				   message.setFrom(new InternetAddress("parththakkar02@gmail.com"));//change accordingly  
				   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
				   message.setSubject("Account Created");  
				   message.setText(s);  
				     
				   //send message  
				   Transport.send(message);  
				  
				   System.out.println("message sent successfully");  
				   
				  } catch (MessagingException e) {throw new RuntimeException(e);}  
				   
			session.setAttribute("email",userEmail);
			return "client/verifyCode";	
		}
		
	@RequestMapping(value="/verifyCode.html",method=RequestMethod.POST)
	public String verifyCode(@Param String verifycodeSemail,@Param String userCode,@Param String code,HttpSession session) throws Exception
	{
		System.out.println(verifycodeSemail);
		System.out.println(code);
		
		if(userCode.equals(code))
		{
			List<Object> registrationlist=this.user.viewRegistration(verifycodeSemail);
			session.setAttribute("registrationlist", registrationlist);
			return "client/changePassword";	
		}
		else
		{
			System.out.println("hello");
			return "client/login";
		}
		
		
	}
	@RequestMapping(value="/verifyPassword.html",method=RequestMethod.POST)
	public String verifyPassword(@Param int loginid,@Param String userPassword)
	{
		System.out.println(loginid);
		this.user.changePassword(loginid,userPassword);
		return "client/login";
		
	}
}
