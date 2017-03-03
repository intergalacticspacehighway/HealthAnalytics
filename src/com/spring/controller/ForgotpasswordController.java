package com.spring.controller;

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
	
	@RequestMapping(value="/verifyEmail.html",method=RequestMethod.GET)
	public String forgetpassword(@Param String userEmail,HttpSession session,@Param String userCode,@Param String userPassword,@Param String email,@Param String email1)
	{
		Random ran=new Random();
		ran.setSeed(1);
		 int num=ran.nextInt(999999-100000+1);
		  String s=Integer.toString(num);
			System.out.println(s);
	
		if(userEmail != null && userCode == null && userPassword == null && email == null && email1 == null)
		{	
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
		
		else if(userCode!=null && userEmail == null && userPassword == null && email != null && email1 == null)
		{
			System.out.println(email);
			if(userCode.equals(s))
			{
				session.setAttribute("email1",email);
				return "client/changePassword";	
			}
			else
			{
				System.out.println("hello");
				return "client/login";
			}
			
		}
		else if(userEmail == null && userCode == null && userPassword != null && email==null && email1 != null)
		{
			System.out.println(email1);
			this.user.changePassword(email1, userPassword);
			return "client/login" ;
		}
		else if(userEmail == null && userCode == null && userPassword == null && email==null && email1 == null)
		{
			return "client/verifyEmail";
		}
		else
		{
			return "client/verifyEmail";
		}
		
		
		
	}
	
}
