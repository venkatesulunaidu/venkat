package com.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.bat;

@Repository
public class batdaoimpl implements batdao{
	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Transactional
	public List<bat> getAllbat() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<bat> bat = session.createQuery("from bat").list();
		session.close();
		return bat;
	}
	@Transactional
	public bat getbatbysid(int sid) {
		Session session = sessionFactory.openSession();
		bat bat = (bat) session.get(bat.class, sid);
		session.close();
		return bat;
	}
	@Transactional
	public void deletebat(int sid) {
		Session session = sessionFactory.openSession();
		bat bat = (bat) session.get(bat.class, sid);
		session.delete(bat);
		session.flush();
		session.close();
		
	}
	@Transactional
	public void addbat(bat bat) {
		Session session = sessionFactory.openSession();
		session.save(bat);
		session.flush();
		session.close();
		
	}
	@Transactional
	public void editbat(bat bat) {
		Session session = sessionFactory.openSession();
		
		session.saveOrUpdate(bat);
		session.flush();
		session.close();
		
	}

}


