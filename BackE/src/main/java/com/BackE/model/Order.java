package com.BackE.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Order")
public class Order implements Serializable {
	/**
	 *  
	 */
	private static final long serialVersionUID = -6995585403613163490L;

	 public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	@Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private int orderId;
	 // private Order order;private Date orderDate;
	 //private int orderNum;private double price;private Product product;private double amount;
	 //private double amount;

	 @OneToOne
	 @JoinColumn(name = "cartId")
	 private Cart cart;
	 
	 @OneToOne
	 @JoinColumn(name = "shipingId")
	 private Shipping shipping;

	 @OneToOne
	 @JoinColumn(name = "customerId")
	 private Customer customer;

	 @OneToOne
	 @JoinColumn(name = "billingId")
	 private Billing billing;

	 public Shipping getShipping() {
		return shipping;
	}

	public void setShipping(Shipping shipping) {
		this.shipping = shipping;
	}
	//@Column(name = "ID", length = 50)

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Billing getBilling() {
		return billing;
	}

	public void setBilling(Billing billing) {
		this.billing = billing;
	}



	
}
