package com.spring.VO;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="doctorclinic")
public class DoctorClinicVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int doctorclinicID;
	@ManyToOne
	private DoctorVO doctor;
	@ManyToOne
	private ClinicVO clinic;
	public int getDoctorclinicID() {
		return doctorclinicID;
	}
	public void setDoctorclinicID(int doctorclinicID) {
		this.doctorclinicID = doctorclinicID;
	}
	public DoctorVO getDoctor() {
		return doctor;
	}
	public void setDoctor(DoctorVO doctor) {
		this.doctor = doctor;
	}
	public ClinicVO getClinic() {
		return clinic;
	}
	public void setClinic(ClinicVO clinic) {
		this.clinic = clinic;
	}
	
	
}
