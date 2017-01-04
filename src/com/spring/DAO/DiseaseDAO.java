package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DiseaseDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void insertDisease(Object object) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
		session.close();
	}
	
	public List<Object> getDisease() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from DiseaseVO ");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
	public void updateIsactive(int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE DiseaseVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x","Yes");
		query.setParameter("id",id);
		query.executeUpdate();
		session.close();
	}
	
	public void deleteDisease(int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE DiseaseVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x","No");
		query.setParameter("id",id);
		query.executeUpdate();
		session.close();
	}
	
	public List<Object> editDisease(int id)
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from DiseaseVO where id =" + id);
		@SuppressWarnings("unchecked")
		List<Object> ls = query.list();
		session.close();
		return ls;
	
		
	}
}
