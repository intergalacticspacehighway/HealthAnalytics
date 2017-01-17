package com.spring.DAO;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;	
@Repository
public class LoginDAO {
	@Autowired
	SessionFactory sessionFactory;
	public List<Object> authentication(String username, String password){
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from LoginVO where userName='"+username+"' and"
				+ " password = '"+password+"' ");
		@SuppressWarnings("unchecked")
	
		List<Object> list = query.list();
		System.out.println(list);
		session.close();
		return list;
	}
}
