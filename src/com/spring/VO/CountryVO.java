package com.spring.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "country")
public class CountryVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int Countryid;
	@Column
	private String countryName;

	public int getCountryid() {
		return Countryid;
	}

	public void setCountryid(int countryid) {
		Countryid = countryid;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

}
