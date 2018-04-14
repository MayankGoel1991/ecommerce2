package com.BackE.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import org.springframework.stereotype.Component;
//import com.fasterxml.jackson.annotation.JsonIgnore;
//import javax.persistence.*;
//import java.io.Serializable;
@Entity
@Component
@Table(name="Item")
public class Item implements Serializable {
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	/**
	 * 
	 */
	private static final long serialVersionUID = -5708805630005867541L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int itemId;
	//private String itemName;
	//private BigDecimal itemPrice;
	private int itemQuantity;
	//private String itemDescription;
	private double itemTotalAmount;
		
	public double getItemTotalAmount() {
		return itemTotalAmount;
	}
	public void setItemTotalAmount(double itemTotalAmount) {
		this.itemTotalAmount = itemTotalAmount;
	}
	@ManyToOne
	@JoinColumn(name = "cartId")
	// @JsonIgnore
	 private Cart cart;

	@ManyToOne
	 @JoinColumn(name = "productId")
	 private Product product;

	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	public int getItemQuantity() {
		return itemQuantity;
	}
	public void setItemQuantity(int itemQuantity) {
		this.itemQuantity = itemQuantity;
	}

}
