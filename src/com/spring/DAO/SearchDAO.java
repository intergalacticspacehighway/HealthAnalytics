package com.spring.DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.DoctorClinicVO;
import com.spring.VO.DoctorSpecialityVO;
import com.spring.VO.DoctorVO;

@Repository
public class SearchDAO {

	@Autowired
	SessionFactory sessionFactory;

	public List<DoctorClinicVO> searchDoctor(int speciality, int stateId,
			int cityId) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session
				.createQuery("from DoctorSpecialityVO where speciality.specialityId="
						+ speciality);
		@SuppressWarnings("unchecked")
		List<DoctorSpecialityVO> list = query.list();
		List<DoctorVO> doctorList = new ArrayList<DoctorVO>();

		for (DoctorSpecialityVO d : list) {
			doctorList.add(d.getDoctor());
		}
	

		StringBuilder doctorId = new StringBuilder();
		
		for (DoctorVO doctor : doctorList) {
			doctorId.append(doctor.getDoctorId() + ",");
			
		}
		String removedLastComma = "("
				+ doctorId.deleteCharAt(doctorId.length() - 1).toString() + ")";
		System.out.println("Doctor ID :: " + removedLastComma);

		Query clinicQuery = session
				.createQuery("from DoctorClinicVO where doctor.doctorId in "
						+ removedLastComma + "and clinic.state.stateId = "
						+ stateId + "and clinic.city.cityId = " + cityId);
		
		List<DoctorClinicVO> clinic = clinicQuery.list();
		for(DoctorClinicVO c: clinic)
		{
			System.out.println(c.getClinic().getClinicName());
		}
		session.close();
		return clinic;
	}
	public List<Object> viewDoctorSpeciality(int doctorId) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from DoctorSpecialityVO where doctor.doctorId="+doctorId);
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
	public List<Object> viewDoctorclinic(int doctorId) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from DoctorClinicVO where doctor.doctorId="+doctorId);
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
}
