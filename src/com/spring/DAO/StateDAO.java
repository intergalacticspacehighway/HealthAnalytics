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
		session.close();
	}

	public List<Object> getState(StateVO state) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from StateVO where country.countryId="
						+ state.getCountry().getCountryId());
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}

	public List<Object> getStateAjax(int id) throws Exception {
		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from StateVO where country.countryId=" + id);
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}

	public List<Object> getAllState() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from StateVO order by country ");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}

	public void deleteState(int id) throws Exception {
		Session session = sessionFactory.openSession();
		/*
		 * Query query = session .createQuery("delete from StateVO where id =" +
		 * id); query.executeUpdate();
		 */
		Query query = session.createQuery("UPDATE StateVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x", "No");
		query.setParameter("id", id);
		query.executeUpdate();
		session.close();

	}

	public List editState(int id) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from StateVO where id =" + id);
		List<Object> ls = query.list();
		session.close();
		return ls;

	}

	public List searchStateAjax(String keyword) throws Exception {

		Session session = sessionFactory.openSession();

		Query query = session
				.createQuery("from StateVO where stateName like :keyword or country.countryName like :keyword");
		query.setParameter("keyword",keyword + "%");
		query.setParameter("keyword", keyword + "%");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		// System.out.println(list.toString());
		session.close();
		return list;

	}
	
	public void updateIsactive(int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE StateVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x","Yes");
		query.setParameter("id",id);
		query.executeUpdate();
		session.close();
	}
	public List<Object> getState() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from StateVO");
		List<Object> ls = query.list();
		session.close();
		return ls;

	}
}
