package com.spring.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.model.CustomerOrder;

@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao{
	
	@Autowired
    private SessionFactory sessionFactory;

   

	public void addCustomerOrder(CustomerOrder customerOrder) {
		Session session = sessionFactory.openSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
        session.close();
		
	}

}
