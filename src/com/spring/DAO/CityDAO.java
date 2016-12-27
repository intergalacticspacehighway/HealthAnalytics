package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.CityVO;

@Repository
public class CityDAO {
	@Autowired
	SessionFactory sessionFactory;

	public void insertCity(Object object) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
		session.close();
	}

	public List<Object> getCity() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CityVO order by state ");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
	
	public void deleteCity(int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE CityVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x","No");
		query.setParameter("id",id);
		query.executeUpdate();
		session.close();
	}
	
	public List<Object> editCity(int id)
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CityVO where id =" + id);
		@SuppressWarnings("unchecked")
		List<Object> ls = query.list();
		session.close();
		return ls;
	
		
	}
	
	public List<Object> getCityAjax(int id) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from CityVO where state.stateId=" + id);
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}

}
