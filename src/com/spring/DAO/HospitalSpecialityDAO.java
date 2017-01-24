	package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.HospitalSpecialityVO;
import com.spring.VO.StateVO;
@Repository
public class HospitalSpecialityDAO {
	@Autowired
	SessionFactory sessionFactory;

	public List<HospitalSpecialityVO> getAllHospital() throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from HospitalSpecialityVO");
		@SuppressWarnings("unchecked")
		List<HospitalSpecialityVO> list = query.list();
		session.close();
		return list;
	}
	public List<HospitalSpecialityVO> getHospital(String hospitalId) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from HospitalSpecialityVO where hospital.hospitalId="+hospitalId);
		@SuppressWarnings("unchecked")
		List<HospitalSpecialityVO> list = query.list();
		session.close();
		return list;
	}
	public void deleteHospital(int hospitalId) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("delete from HospitalSpecialityVO where hospital.hospitalId="+hospitalId);
		query.executeUpdate();
		session.close();
		
	}
	public void inActiveHospital(int hospitalId) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("update from HospitalSpecialityVO set isActive = 'No' where hospital.hospitalId="+hospitalId);
		query.executeUpdate();
		session.close();
		
	}
	public void updateIsActive(int hospitalId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("update from HospitalSpecialityVO set isActive = 'Yes' where hospital.hospitalId="+hospitalId);
		query.executeUpdate();
		session.close();
		
	}

}
