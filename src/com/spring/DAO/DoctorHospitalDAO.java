package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.DoctorHospitalVO;

@Repository
public class DoctorHospitalDAO {
	@Autowired
	SessionFactory sessionFactory;
	
	public List<DoctorHospitalVO> getDoctor(String doctorId) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from DoctorHospitalVO where doctor.doctorId="+doctorId);
		@SuppressWarnings("unchecked")
		List<DoctorHospitalVO> list = query.list();
		session.close();
		return list;
	}
	
	public List<DoctorHospitalVO> getAllDoctor() throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from DoctorHospitalVO");
		@SuppressWarnings("unchecked")
		List<DoctorHospitalVO> list = query.list();
		session.close();
		return list;
	}
	public void deleteDoctor(int doctorId) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("delete from DoctorHospitalVO where doctor.doctorId="+doctorId);
		
		query.executeUpdate();
		session.close();
		
	}

}
