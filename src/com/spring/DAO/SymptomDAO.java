package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SymptomDAO {
	@Autowired
	SessionFactory sessionFactory;
	public void insertSymptom(Object object) throws Exception {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
		session.close();
	}
	
	public List<Object> getSymptom() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from SymptomVO");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
	
	public void deleteSymptom(int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE SymptomVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x","No");
		query.setParameter("id",id);
		query.executeUpdate();
		session.close();
	}
	
	public List<Object> editSymptom(int id)
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from SymptomVO where id =" + id);
		@SuppressWarnings("unchecked")
		List<Object> ls = query.list();
		session.close();
		return ls;
	
		
	}
	
	public void updateIsactive(int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE SymptomVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x","Yes");
		query.setParameter("id",id);
		query.executeUpdate();
		session.close();
	}
}
