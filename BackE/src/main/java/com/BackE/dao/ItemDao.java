package com.BackE.dao;

import java.util.List;
import com.BackE.model.Item;
public interface ItemDao {
	boolean addItem(Item item);
	 public boolean updateItem(Item item);
	 public List < Item > listItem();
	 public void removeItem(Item item);
	 public void removeAllItems(Item item);
	 //read
	 public Item getItemById(int itemId);
	 public Item getItemByProductId(String productId,int cartId);
	
}




