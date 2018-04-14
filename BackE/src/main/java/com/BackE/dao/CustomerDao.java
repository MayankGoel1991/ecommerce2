package com.BackE.dao;

import java.util.List;
import com.BackE.model.Customer;

public interface CustomerDao {

	boolean addCustomer(Customer customer);

	public boolean updateCustomer(Customer customer);
	public List<Customer> listCustomer();
	public void removeCustomer(String customerId);
	//read
	public Customer getCustomerById(String customerId);
	
}



	


