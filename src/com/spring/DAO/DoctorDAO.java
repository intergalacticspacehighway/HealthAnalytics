package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DoctorDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public List<Object> getAllDoctor() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from DoctorVO ");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
	
	public void deleteDoctor(int doctorId) throws Exception {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
	    Query query = session.createQuery("update from DoctorVO set isActive = 'No' where doctorId ="+doctorId);
		query.executeUpdate();
	    tr.commit();
		session.close();
	}
}
