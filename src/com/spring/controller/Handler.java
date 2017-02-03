package com.spring.controller;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class Handler implements AuthenticationSuccessHandler{

	private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	
	
	@Override
	public void onAuthenticationSuccess(HttpServletRequest arg0,
			HttpServletResponse arg1, Authentication arg2) throws IOException,
			ServletException {

		HttpSession session = arg0.getSession();
		
		String targetUrl = 	target(arg2);
		redirectStrategy.sendRedirect(arg0, arg1, targetUrl);
		
	}

	private String target(Authentication arg2) {

		Set<String> authorities = AuthorityUtils.authorityListToSet(arg2.getAuthorities());
        if (authorities.contains("ROLE_ADMIN")) {
        	return "/admin/index.html";
        } 
        else if (authorities.contains("ROLE_USER") || authorities.contains("ROLE_DOCTOR")) {
        	return "/home.html";
        }
	
	else {
        throw new IllegalStateException();
    }
}

public RedirectStrategy getRedirectStrategy() {
	return redirectStrategy;
}

public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
	this.redirectStrategy = redirectStrategy;
}
	
	
	}


