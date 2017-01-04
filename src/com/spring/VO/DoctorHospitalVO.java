package com.spring.VO;

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
	
	
	

}
