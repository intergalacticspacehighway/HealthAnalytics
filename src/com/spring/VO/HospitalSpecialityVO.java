package com.spring.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "hospitalspeciality")
public class HospitalSpecialityVO {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int hospitalSpecialityid;
	@Column(name = "isActive")
	private String isActive;

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public int getHospitalSpecialityid() {
		return hospitalSpecialityid;
	}

	public void setHospitalSpecialityid(int hospitalSpecialityid) {
		this.hospitalSpecialityid = hospitalSpecialityid;
	}

	@ManyToOne
	public
	HospitalVO hospital;

	public HospitalVO getHospital() {
		return hospital;
	}

	public void setHospital(HospitalVO hospital) {
		this.hospital = hospital;
	}

	public SpecialityVO getSpeciality() {
		return speciality;
	}

	public void setSpeciality(SpecialityVO speciality) {
		this.speciality = speciality;
	}

	@ManyToOne
	
	public SpecialityVO speciality;

}
