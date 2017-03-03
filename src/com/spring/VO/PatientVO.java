package com.spring.VO;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="patient")
public class PatientVO {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int patientId;
	@ManyToOne
	private RegistrationVO registration;
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	public RegistrationVO getRegistration() {
		return registration;
	}
	public void setRegistration(RegistrationVO registration) {
		this.registration = registration;
	}
	
}
