package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RegistationDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public List<Object> getUsername() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from LoginVO ");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
}
