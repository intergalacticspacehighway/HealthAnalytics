package com.spring.VO;

import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="patientrecord")
public class PatientRecordVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int patientrecordId;
	private int age;
	private String sex;
	private String occupation;
	private String complaints;
	private String duration;
	private String pastHistory;
	private String personalHabits;
	private String medicines;
	private String familyHistory;
	private String completebloodcount;
	private String renalfunctiontest;
	private String livalfunctiontest;
	private String urine;
	private Date currentdate;
	@ManyToOne
	PatientVO patient;
	public int getPatientrecordId() {
		return patientrecordId;
	}
	public void setPatientrecordId(int patientrecordId) {
		this.patientrecordId = patientrecordId;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getComplaints() {
		return complaints;
	}
	public void setComplaints(String complaints) {
		this.complaints = complaints;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getPastHistory() {
		return pastHistory;
	}
	public void setPastHistory(String pastHistory) {
		this.pastHistory = pastHistory;
	}
	public String getPersonalHabits() {
		return personalHabits;
	}
	public void setPersonalHabits(String personalHabits) {
		this.personalHabits = personalHabits;
	}
	public String getMedicines() {
		return medicines;
	}
	public void setMedicines(String medicines) {
		this.medicines = medicines;
	}
	public String getFamilyHistory() {
		return familyHistory;
	}
	public void setFamilyHistory(String familyHistory) {
		this.familyHistory = familyHistory;
	}
	public String getCompletebloodcount() {
		return completebloodcount;
	}
	public void setCompletebloodcount(String completebloodcount) {
		this.completebloodcount = completebloodcount;
	}
	public String getRenalfunctiontest() {
		return renalfunctiontest;
	}
	public void setRenalfunctiontest(String renalfunctiontest) {
		this.renalfunctiontest = renalfunctiontest;
	}
	public String getLivalfunctiontest() {
		return livalfunctiontest;
	}
	public void setLivalfunctiontest(String livalfunctiontest) {
		this.livalfunctiontest = livalfunctiontest;
	}
	public String getUrine() {
		return urine;
	}
	public void setUrine(String urine) {
		this.urine = urine;
	}
	public PatientVO getPatient() {
		return patient;
	}
	public void setPatient(PatientVO patient) {
		this.patient = patient;
	}
	public Date getCurrentdate() {
		return currentdate;
	}
	public void setCurrentdate(Date currentdate) {
		this.currentdate = currentdate;
	}
	
	
	
	
	
	
}
