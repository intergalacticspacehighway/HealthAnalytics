package com.spring.DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.VO.UserVO;

@Repository
public class UserDAO {
	@Autowired
	SessionFactory sessionFactory;

	public UserVO getUser(String username) {
		
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from UserVO where username =?").setParameter(0, username);
		@SuppressWarnings("unchecked")
		List<UserVO> list = query.list();
		session.close();
		if(list.size()>0){
			return list.get(0);
		}
		else{
			return null;
		}
	}

}
