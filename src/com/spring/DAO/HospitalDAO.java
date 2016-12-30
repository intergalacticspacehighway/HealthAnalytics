package com.spring.DAO;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class HospitalDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void insertHospital(Object object) throws Exception {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
		session.close();
	}
	public List<Object> getAllhospital() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from HospitalVO ");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
}
