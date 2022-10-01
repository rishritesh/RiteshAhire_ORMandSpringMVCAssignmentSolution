package com.spring.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.spring.model.Customer;





@Component
public class CustomerDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createCustomer(Customer customer) {
		this.hibernateTemplate.saveOrUpdate(customer);
	}
	
	
	//get all product
	@Transactional
	public List<Customer> getCustomer(){
		List<Customer> student = this.hibernateTemplate.loadAll(Customer.class);
		return student;
	}
	
	//delete product
	@Transactional
	public  void deleteCustomer(int Id) {
		Customer s=(Customer) this.hibernateTemplate.get(Customer.class, Id);
		this.hibernateTemplate.delete(s);
		
	}
	
	@Transactional
	public Customer getCustomer(int Id) {
	
		return this.hibernateTemplate.get(Customer.class, Id);
	}

	 
}
