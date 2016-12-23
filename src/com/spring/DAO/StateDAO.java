package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.StateVO;

@Repository
public class StateDAO {
	@Autowired
	SessionFactory sessionFactory;

	public void insertState(Object object) throws Exception {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
	}

	public List<Object> getState(StateVO state) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from StateVO where country.countryId="
						+ state.getCountry().getCountryId());
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		return list;
	}

}
