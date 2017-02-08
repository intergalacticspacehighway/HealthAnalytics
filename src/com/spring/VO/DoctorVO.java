package com.spring.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "doctor")
public class DoctorVO {

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	

	public RegistrationVO getRegistration() {
		return registration;
	}

	public void setRegistration(RegistrationVO registration) {
		this.registration = registration;
	}

	public String getDoctorSocialInformation() {
		return doctorSocialInformation;
	}

	public void setDoctorSocialInformation(String doctorSocialInformation) {
		this.doctorSocialInformation = doctorSocialInformation;
	}

	public String getDoctorDescription() {
		return doctorDescription;
	}

	public void setDoctorDescription(String doctorDescription) {
		this.doctorDescription = doctorDescription;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int doctorId;
	@Column
	private String doctorSocialInformation;
	@Column
	private String doctorDescription;
	
	@Column
	private String isActive;
	@ManyToOne
	private RegistrationVO registration;
	
	

}