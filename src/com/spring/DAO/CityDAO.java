package com.spring.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CityDAO {
	@Autowired
	SessionFactory sessionFactory;
	public void insertCity(Object object)
	{
		Session session=sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
	}

}
