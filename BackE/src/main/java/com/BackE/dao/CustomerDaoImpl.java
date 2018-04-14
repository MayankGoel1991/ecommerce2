package com.BackE.dao;

import java.util.List;
//import javax.transaction.Transactional;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.annotations.common.util.impl.Log_.logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.BackE.model.Cart;
import com.BackE.model.Customer;
import com.BackE.model.Role;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao {

 @Autowired
 Role role;
 @Autowired
 private SessionFactory sessionFactory;
 public boolean addCustomer(Customer customer) {
  System.out.println("adding data in customerin dao ");
  Session session = sessionFactory.getCurrentSession();
  try {
   customer.setCustomerId(customer.getpEmail());
   customer.setActive(true);
   role.setRoleName(customer.getCustomerId());
   customer.getBilling().setCustomer(customer);
   customer.getShipping().setCustomer(customer);
   session.saveOrUpdate(customer.getBilling());
   session.saveOrUpdate(customer.getShipping());
   session.saveOrUpdate(customer);
   Cart cart = new Cart();
   cart.setCustomer(customer);
   customer.setCart(cart);
   
   session.saveOrUpdate(cart);
   session.saveOrUpdate(customer);
   session.save(role);   
   return true;
  } catch (HibernateException e) {
   System.out.println(e.getMessage());
   e.printStackTrace();
   return false;
  }

 }
 public boolean updateCustomer(Customer customer) {
  Session session = sessionFactory.getCurrentSession();
  System.out.println("customer updated successfully, customer Details=" + customer);
  try {
   session.update(customer);
   return true;
  } catch (HibernateException e) {
   e.printStackTrace();
   return false;
  }

 }

 @SuppressWarnings("unchecked")
  // @Override
 public List < Customer > listCustomer() {
  Session session = this.sessionFactory.getCurrentSession();
  try {
   session = sessionFactory.getCurrentSession();
  } catch (HibernateException e) {
   session = sessionFactory.openSession();
  }
  List < Customer > customersList = session.createQuery("from Customer").list();
  for (Customer p: customersList) {
   System.out.println("customer List::" + p);

  }
  return customersList;
 }


 public void removeCustomer(String customerId) {
  Session session = this.sessionFactory.getCurrentSession();
  Customer p = (Customer) session.load(Customer.class, customerId);
  if (null != p) {
   session.delete(p);
  } else {
   System.out.println("Record does not exist");
  }

 }
 public Customer getCustomerById(String customerId) {
  Session session = this.sessionFactory.getCurrentSession();
  Customer customer = (Customer) session.get(Customer.class, customerId);

  if (null != customer) {
   session.update(customer);
  } else {
   System.out.println("Record does not exist");
  }

  return customer;
 }

}