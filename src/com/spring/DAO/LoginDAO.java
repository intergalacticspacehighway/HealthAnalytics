package com.spring.DAO;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;	
@Repository
public class LoginDAO {
	@Autowired
	SessionFactory sessionFactory;
	
}
