package com.spring.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "city")
public class CityVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cityId;
	@Column
	private String cityName;
	private StateVO state = new StateVO();

	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public StateVO getState() {
		return state;
	}

	public void setState(StateVO state) {
		this.state = state;
	}


}
