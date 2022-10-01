package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.dao.CustomerDao;
import com.spring.model.Customer;


@Controller
public class MainController {
	@Autowired
	private CustomerDao customerDao;

	@RequestMapping("/")
	public String Home(Model m) {
		List<Customer> customers = customerDao.getCustomer();
		m.addAttribute("customer", customers);
		// System.out.println(student);
		return "index";
	}

	// add product form
	@RequestMapping("/add")
	public String Add() {
		return "add_product_form";
	}

	//save to database
	@RequestMapping(value = "/handler", method = RequestMethod.POST)
	public String handler(@ModelAttribute Customer customer) {
		
		customerDao.createCustomer(customer);
		System.out.println(customer);
		return "redirect:/";
	}

	//delete the student
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable("id") int id) {
		customerDao.deleteCustomer(id);
		return "redirect:/";
	}

	//update the student before get data from database and show to update page 
	@RequestMapping("/update/{id}")
	public String update(@PathVariable("id") int id, Model m) {
		Customer customer = customerDao.getCustomer(id);
		m.addAttribute("customer", customer);
		return "update_form";
	}

	//update the form with handler and save the in database
	@RequestMapping(value = "/updateHandler", method = RequestMethod.POST)
	public String updateHandler(@ModelAttribute Customer customer) {
		customerDao.createCustomer(customer);
		return "redirect:/";
	}
}
