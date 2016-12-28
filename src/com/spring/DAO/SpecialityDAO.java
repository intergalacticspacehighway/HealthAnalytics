package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SpecialityDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void insertSpeciality(Object object) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
		session.close();
	}
	
	public List<Object> getSpeciality() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from SpecialityVO");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
}
