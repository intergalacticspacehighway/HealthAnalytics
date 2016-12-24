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

	public List<Object> getCity(CityVO city) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from CityVO where state.stateId="
				+ city.getState().getStateId());
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}

}
