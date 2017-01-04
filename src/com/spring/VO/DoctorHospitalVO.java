package com.spring.VO;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name="doctorhospital")


public class DoctorHospitalVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int doctorhospitalId;
	@ManyToOne
	DoctorVO doctor;
	@ManyToOne
	HospitalVO hospital;

	@Column
	private String isActive;

	public int getDoctorhospitalId() {
		return doctorhospitalId;
	}

	public void setDoctorhospitalId(int doctorhospitalId) {
		this.doctorhospitalId = doctorhospitalId;
	}

	public DoctorVO getDoctor() {
		return doctor;
	}

	public void setDoctor(DoctorVO doctor) {
		this.doctor = doctor;
	}

	public HospitalVO getHospital() {
		return hospital;
	}

	public void setHospital(HospitalVO hospital) {
		this.hospital = hospital;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

}
