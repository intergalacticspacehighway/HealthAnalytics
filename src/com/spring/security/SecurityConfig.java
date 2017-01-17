package com.spring.security;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter  {
	
	
	
	@Autowired
	public void configureGlobal (AuthenticationManagerBuilder auth) throws Exception{
		auth.inMemoryAuthentication().withUser("user").password("password").roles("USER").and()
		.withUser("admin").password("password").roles("USER","ADMIN");
		
		/*jdbcAuthentication().dataSource(dataSource);*/
		
		
		
		/*inMemoryAuthentication().withUser("user").password("password").roles("USER").and()
			.withUser("admin").password("password").roles("USER","ADMIN");*/
	}
	protected void configure(HttpSecurity http) throws Exception{
		http.authorizeRequests().antMatchers("/login.html")
		.permitAll().antMatchers("/admin.html").hasRole("ADMIN")
		.anyRequest().authenticated().and().formLogin().loginPage("/login.html")
		.loginProcessingUrl("/authorize.html").and().httpBasic(); 
	}
	
}
