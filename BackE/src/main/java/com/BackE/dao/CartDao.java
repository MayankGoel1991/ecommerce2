package com.BackE.dao;

import java.io.IOException;
import java.util.List;
import com.BackE.model.Cart;

public interface CartDao {
	boolean addCart(Cart cart);
	 public boolean updateCart(Cart cart);
	 public List < Cart > listCart(String productId);
	 public void removeCart(int cartId);
	 //read
	 public Cart getCartById(int cartId);
     public int getQuantity(String cName, String pName);
	 public long getTotalAmount(String cName);
	 public Cart getCartByCustomer(String cName, String pName);
	 public long getNumberOfProducts(String cName);
     public int clearCart(String cName);
	 public Cart validate(int cartId) throws IOException;
	 //public Product getProductById(String productId);
}
