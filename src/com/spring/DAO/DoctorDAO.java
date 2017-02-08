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
	public void updateIsactive(int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE DoctorVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x","Yes");
		query.setParameter("id",id);
		query.executeUpdate();
		session.close();
	}
	public List<Object> getDoctor(String name) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from LoginVO where username='"+name+"'");
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
