package com.BackE.dao;

import java.util.List;
import com.BackE.model.Order;

public interface OrderDao {
	 public boolean addOrder(Order order);
	 //public void updateOrder(Order order);
	 public List < Order > getAllOrders();
	 //public void removeOrder(String orderId);
	 //read
	 public Order getOrderById(String orderId);
	 public int changeOrderStatus(int id, String status);
}
