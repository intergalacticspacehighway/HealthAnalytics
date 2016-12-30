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

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int doctorId;
	@Column
	private String doctorName;
	@Column
	private String doctorDateOfBirth;
	@Column
	private String doctorGender;
	@Column
	private String doctorAddress;
	@Column
	private String doctorEmail;
	@Column
	private String doctorPhone;
	@Column
	private String doctorPassword;
	@Column
	private String doctorWebsiteUrl;
	@Column
	private String doctorSocialInformation;
	@Column
	private String doctorDescription;
	@Column
	private int doctorZipCode;
	@Column
	private String isActive;
	@ManyToOne
	CountryVO country;
	@ManyToOne
	StateVO state;
	@ManyToOne
	CityVO city;

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public String getDoctorName() {
		return doctorName;
	}

	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	public String getDoctorDateOfBirth() {
		return doctorDateOfBirth;
	}

	public void setDoctorDateOfBirth(String doctorDateOfBirth) {
		this.doctorDateOfBirth = doctorDateOfBirth;
	}

	public String getDoctorGender() {
		return doctorGender;
	}

	public void setDoctorGender(String doctorGender) {
		this.doctorGender = doctorGender;
	}

	public String getDoctorAddress() {
		return doctorAddress;
	}

	public void setDoctorAddress(String doctorAddress) {
		this.doctorAddress = doctorAddress;
	}

	public String getDoctorEmail() {
		return doctorEmail;
	}

	public void setDoctorEmail(String doctorEmail) {
		this.doctorEmail = doctorEmail;
	}

	public String getDoctorPhone() {
		return doctorPhone;
	}

	public void setDoctorPhone(String doctorPhone) {
		this.doctorPhone = doctorPhone;
	}

	public String getDoctorPassword() {
		return doctorPassword;
	}

	public void setDoctorPassword(String doctorPassword) {
		this.doctorPassword = doctorPassword;
	}

	public String getDoctorWebsiteUrl() {
		return doctorWebsiteUrl;
	}

	public void setDoctorWebsiteUrl(String doctorWebsiteUrl) {
		this.doctorWebsiteUrl = doctorWebsiteUrl;
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

	public int getDoctorZipCode() {
		return doctorZipCode;
	}

	public void setDoctorZipCode(int doctorZipCode) {
		this.doctorZipCode = doctorZipCode;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public CountryVO getCountry() {
		return country;
	}

	public void setCountry(CountryVO country) {
		this.country = country;
	}

	public StateVO getState() {
		return state;
	}

	public void setState(StateVO state) {
		this.state = state;
	}

	public CityVO getCity() {
		return city;
	}

	public void setCity(CityVO city) {
		this.city = city;
	}

}