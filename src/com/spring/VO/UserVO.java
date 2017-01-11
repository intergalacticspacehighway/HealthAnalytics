package com.spring.VO;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class UserVO {
	
	@Id
	@Column(name="username", unique = true, nullable= false, length = 45)
	private String username;
	private String password;
	private String isActive;
	
	
	public String getIsActive() {
		return isActive;
	}
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	@OneToMany
	private Set<UserRoleVO> userRole = new HashSet<UserRoleVO>(0);
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Set<UserRoleVO> getUserRole() {
		return userRole;
	}
	public void setUserRole(Set<UserRoleVO> userRole) {
		this.userRole = userRole;
	}
	
	
	

}
