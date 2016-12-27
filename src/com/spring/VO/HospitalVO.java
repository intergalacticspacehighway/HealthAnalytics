package com.spring.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Hospital")
public class HospitalVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int hospitalId;
	@Column
	private String hospitalName;
	@Column
	private String hospitalSpeciality;
	@Column
	private String hospitalAddress;
	@Column
	private String hospitalEmail;
	@Column
	private String hospitalPhone;
	@Column
	private String hospitalPassword;
	@Column
	private String hospitalWebsiteUrl;
	@Column
	private String hospitalSocialInformation;
	@Column
	private String hospitalDescription;
	@Column
	private int hospitalZipCode;
	@ManyToOne
	CountryVO country;
	@ManyToOne
	StateVO state;
	@ManyToOne
	CityVO city;

	public int getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(int hospitalId) {
		this.hospitalId = hospitalId;
	}

	public String getHospitalName() {
		return hospitalName;
	}

	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}

	public String getHospitalSpeciality() {
		return hospitalSpeciality;
	}

	public void setHospitalSpeciality(String hospitalSpeciality) {
		this.hospitalSpeciality = hospitalSpeciality;
	}

	public String getHospitalAddress() {
		return hospitalAddress;
	}

	public void setHospitalAddress(String hospitalAddress) {
		this.hospitalAddress = hospitalAddress;
	}

	public String getHospitalEmail() {
		return hospitalEmail;
	}

	public void setHospitalEmail(String hospitalEmail) {
		this.hospitalEmail = hospitalEmail;
	}

	public String getHospitalPhone() {
		return hospitalPhone;
	}

	public void setHospitalPhone(String hospitalPhone) {
		this.hospitalPhone = hospitalPhone;
	}

	public String getHospitalPassword() {
		return hospitalPassword;
	}

	public void setHospitalPassword(String hospitalPassword) {
		this.hospitalPassword = hospitalPassword;
	}

	public String getHospitalWebsiteUrl() {
		return hospitalWebsiteUrl;
	}

	public void setHospitalWebsiteUrl(String hospitalWebsiteUrl) {
		this.hospitalWebsiteUrl = hospitalWebsiteUrl;
	}

	public String getHospitalSocialInformation() {
		return hospitalSocialInformation;
	}

	public void setHospitalSocialInformation(String hospitalSocialInformation) {
		this.hospitalSocialInformation = hospitalSocialInformation;
	}

	public String getHospitalDescription() {
		return hospitalDescription;
	}

	public void setHospitalDescription(String hospitalDescription) {
		this.hospitalDescription = hospitalDescription;
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

	public int getHospitalZipCode() {
		return hospitalZipCode;
	}

	public void setHospitalZipCode(int hospitalZipCode) {
		this.hospitalZipCode = hospitalZipCode;
	}

}
