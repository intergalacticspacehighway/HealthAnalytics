package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.LoginVO;

@Repository
public class UserDAO {


	@Autowired
	SessionFactory sessionFactory;
	
	public List<Object> getDoctor(String name) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from DoctorVO where registration.login.username='"+name+"'");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
	public void updateImage(int id,String path)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE LoginVO set userprofileImage ='"+path+"'"
				+ "WHERE loginId =" +id);
		query.executeUpdate();
		session.close();
	}
}
