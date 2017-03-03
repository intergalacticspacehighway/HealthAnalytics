package com.spring.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="clinic")
public class ClinicVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int clinicId;
	@Column
	private String clinicName;
	@Column
	private String clinicAddress;
	@Column
	private String clinicEmailId;
	@Column
	private String clinicPhoneNo;
	@Column
	private String clinicWebsite;
	@Column
	private int clinicPostalCode;
	@ManyToOne
	private CountryVO country;
	@ManyToOne
	private StateVO state;
	@ManyToOne
	private CityVO city;
	public int getClinicId() {
		return clinicId;
	}
	public void setClinicId(int clinicId) {
		this.clinicId = clinicId;
	}
	public String getClinicName() {
		return clinicName;
	}
	public void setClinicName(String clinicName) {
		this.clinicName = clinicName;
	}
	public String getClinicAddress() {
		return clinicAddress;
	}
	public void setClinicAddress(String clinicAddress) {
		this.clinicAddress = clinicAddress;
	}
	public String getClinicEmailId() {
		return clinicEmailId;
	}
	public void setClinicEmailId(String clinicEmailId) {
		this.clinicEmailId = clinicEmailId;
	}
	public String getClinicPhoneNo() {
		return clinicPhoneNo;
	}
	public void setClinicPhoneNo(String clinicPhoneNo) {
		this.clinicPhoneNo = clinicPhoneNo;
	}
	public String getClinicWebsite() {
		return clinicWebsite;
	}
	public void setClinicWebsite(String clinicWebsite) {
		this.clinicWebsite = clinicWebsite;
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
	public int getClinicPostalCode() {
		return clinicPostalCode;
	}
	public void setClinicPostalCode(int clinicPostalCode) {
		this.clinicPostalCode = clinicPostalCode;
	}
	
	
}
