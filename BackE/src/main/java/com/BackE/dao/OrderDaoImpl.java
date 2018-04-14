package com.BackE.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.BackE.model.Customer;
import com.BackE.model.Order;

@Transactional
@Repository("OrderDao")
public class OrderDaoImpl implements OrderDao {
	// private final Logger logger = LoggerFactory.getLogger(CustomerOrderDAOImpl.class);
	@Autowired
	 private SessionFactory sessionFactory;
	
	public boolean addOrder(Order order) {
		System.out.println("adding data in order");
		  System.out.println("Starting addCustomerOrder method of customerOrderDao");

		  try {
			  //order.setOrderId(order.getItemName());
		      //session.persist(order);
			  Session session = sessionFactory.getCurrentSession();

			   Customer customer = order.getCustomer();
			   order.setBilling(customer.getBilling());
			   order.setShipping(customer.getShipping());
			   //order.setOrderId("Placed");
			   session.saveOrUpdate(order);
			   session.saveOrUpdate(customer);
			   session.saveOrUpdate(customer.getBilling());
			   session.saveOrUpdate(customer.getShipping());
		   return true;
		  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return false;
		  }
	}

	public void updateOrder(Order order) {
		Session session = this.sessionFactory.getCurrentSession();
		  session.update(order);
		  System.out.println("order updated successfully, order Details="+order);
		
	}
	public void removeOrder(String orderId) {
		Session session = this.sessionFactory.getCurrentSession();
		  Order p = (Order) session.load(Order.class, orderId);
		  session.delete(p);
		
	}

	public Order getOrderById(String orderId) {
		System.out.println("Starting getCustomerOrderById method of customerOrderDao");
		//Session session = this.sessionFactory.getCurrentSession();
		  //Order order= (Order) session.get(Order.class, orderId);
		  //return order;
		 return sessionFactory.getCurrentSession().get(Order.class, orderId);
	}
	/*@SuppressWarnings("unchecked")
	  //@Override
	public List<Order> getAllOrders() {
		System.out.println("Starting getAllOrders method of customerOrderDao");
		//Session session = this.sessionFactory.getCurrentSession();
		 // List < Order > orderList = session.createQuery("from Order").list();
		  for (Order p: orderList) {
		   System.out.println("order List::" + p);

		  }
		  return orderList;
		  try {
			   //HQL
			   return sessionFactory.getCurrentSession().createQuery("FROM Order").list();

			  } catch (HibernateException e) {
				   System.out.println(e.getMessage());
				   e.printStackTrace();
				   //return false;
				  }
		return getAllOrders();

	}*/

	public int changeOrderStatus(int id, String status) {
		 System.out.println("Starting changeOrderStatus method of customerOrderDao");
		  try {

		   Query query = sessionFactory.getCurrentSession()
		    .createQuery("UPDATE CustomerOrder SET orderStatus = '" + status + "' where id = " + id);
		   return query.executeUpdate();
		  } catch (HibernateException e) {
			   System.out.println(e.getMessage());
			   e.printStackTrace();
			   //return false;
			  }
		return id;

		 }

	public List<Order> getAllOrders() {
		// TODO Auto-generated method stub
		return null;
	}
}
