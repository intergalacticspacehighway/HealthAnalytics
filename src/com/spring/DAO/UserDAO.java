package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.DoctorSpecialityVO;
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
	public void insertDoctorSpeciality(Object object) {
		Session session = sessionFactory.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(object);
		tr.commit();
		session.close();
	}
	public List<DoctorSpecialityVO> getDoctorSpeciality(String name) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from DoctorSpecialityVO where doctor.registration.login.username='"+name+"'");
		@SuppressWarnings("unchecked")
		List<DoctorSpecialityVO> list = query.list();
		session.close();
		return list;
	}
	public void upadateDoctorSpeciality(int id1,int i) throws Exception {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("UPDATE DoctorSpecialityVO set speciality.specialityId="+id1 + "where doctor.doctorId=" +i);
		query.executeUpdate();
		session.close();
		
	}
	
}
