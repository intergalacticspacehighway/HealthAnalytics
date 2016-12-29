package com.spring.VO;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="doctorspeciality")
public class DoctorSpecialityVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int doctorspecialityId;
	@Column
	private String isActive;
	@ManyToOne
	public
	DoctorVO doctor;
	@ManyToOne
	SpecialityVO speciality;
	public int getDoctorspecialityId() {
		return doctorspecialityId;
	}
	public void setDoctorspecialityId(int doctorspecialityId) {
		this.doctorspecialityId = doctorspecialityId;
	}
	public DoctorVO getDoctor() {
		return doctor;
	}
	public void setDoctor(DoctorVO doctor) {
		this.doctor = doctor;
	}
	public SpecialityVO getSpeciality() {
		return speciality;
	}
	public void setSpeciality(SpecialityVO speciality) {
		this.speciality = speciality;
	}
	public String getIsActive() {
		return isActive;
	}
	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}
	
}
