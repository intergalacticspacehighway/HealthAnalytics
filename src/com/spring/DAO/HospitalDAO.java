package com.spring.DAO;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.HospitalVO;
import com.spring.VO.SpecialityVO;

@Repository
public class HospitalDAO {

	@Autowired
	SessionFactory sessionFactory;

	public void insertHospital(Object object) throws Exception {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
		session.close();
	}
	public List<Object> getAllHospital() throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from HospitalVO ");
		@SuppressWarnings("unchecked")
		List<Object> list = query.list();
		session.close();
		return list;
	}
	public void deleteHospital(int hospitalId) throws Exception {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
	    Query query = session.createQuery("update from HospitalVO set isActive = 'No' where hospitalId ="+hospitalId);
		query.executeUpdate();
	    tr.commit();
		session.close();
	}
<<<<<<< HEAD
	public void updateIsactive(int id)
	{
		Session session = sessionFactory.openSession();
		Query query=session.createQuery("UPDATE HospitalVO set isActive = :x "
				+ "WHERE id = :id");
		query.setParameter("x","Yes");
		query.setParameter("id",id);
		query.executeUpdate();
		session.close();
=======
	public List<HospitalVO> getRestHospital(String hospitalId) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from HospitalVO where hospitalId not in ("+hospitalId+")");
		@SuppressWarnings("unchecked")
		List<HospitalVO> list = query.list();
		System.out.println(list);
		session.close();
		return list;
>>>>>>> origin/master
	}
}
