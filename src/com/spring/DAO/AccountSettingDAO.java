package com.spring.DAO;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AccountSettingDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public void editUsername(String username , int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE DoctorVO set registration.login.username = '"+username+"'"
				+ "WHERE doctorId =" +id);
		query.executeUpdate();
		session.close();
	}
}
