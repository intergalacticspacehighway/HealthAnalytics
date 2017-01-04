package com.spring.VO;

<<<<<<< HEAD
=======
import javax.persistence.Column;
>>>>>>> 91f52d0e91dcac8b6a37af90f87576be9545714f
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
<<<<<<< HEAD
@Table(name="doctorhospital")

public class DoctorHospitalVO {
	
=======
@Table(name = "doctorhospital")
public class DoctorHospitalVO {

>>>>>>> 91f52d0e91dcac8b6a37af90f87576be9545714f
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int doctorhospitalId;
	@ManyToOne
	DoctorVO doctor;
	@ManyToOne
	HospitalVO hospital;
<<<<<<< HEAD
	
	
	
=======
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
>>>>>>> 91f52d0e91dcac8b6a37af90f87576be9545714f

}
