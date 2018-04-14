package com.BackE.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
//import com.fasterxml.jackson.annotation.JsonIgnore;
//import javax.persistence.*;

@Entity
@Table(name="Cart")
public class Cart implements Serializable {

	private static final long serialVersionUID = 1890171191463441899L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartId;
	private int cartQuantity;
	private double cartTotalAmount;
	@OneToMany(mappedBy = "cart", cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	 private List <Item> Items;

	 @OneToOne
	 @JoinColumn(name = "customerId")
	 //@JsonIgnore
	 private Customer customer;

	public List<Item> getItems() {
		return Items;
	}
	public void setItems(List<Item> items) {
		Items = items;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	
	
	public int getCartId() {
		return cartId;
	}
	public void setCartId(int cartId) {
		this.cartId = cartId;
	}
	public int getCartQuantity() {
		return cartQuantity;
	}
	public void setCartQuantity(int cartQuantity) {
		this.cartQuantity = cartQuantity;
	}
	
	public double getCartTotalAmount() {
		return cartTotalAmount;
	}

	public void setCartTotalAmount(double cartTotalAmount) {
		this.cartTotalAmount = cartTotalAmount;
	}

}
