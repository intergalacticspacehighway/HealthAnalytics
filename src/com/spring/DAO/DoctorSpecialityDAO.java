package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.DoctorSpecialityVO;
import com.spring.VO.HospitalSpecialityVO;

@Repository
public class DoctorSpecialityDAO {

	@Autowired
	SessionFactory sessionFactory;

	public List<Object> getAllDoctor() throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from DoctorSpecialityVO");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
	
	public void inActiveDoctor(int doctorId) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("update from DoctorSpecialityVO set isActive = 'No' where doctor.doctorId="+doctorId);
		query.executeUpdate();
		session.close();
		
	}
	
	public List<DoctorSpecialityVO> getDoctor(String doctorId) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from DoctorSpecialityVO where doctor.doctorId="+doctorId);
		@SuppressWarnings("unchecked")
		List<DoctorSpecialityVO> list = query.list();
		session.close();
		return list;
	}
}
