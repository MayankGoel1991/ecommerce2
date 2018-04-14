package com.BackE.dao;

import java.util.List;

import javax.persistence.Query;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.BackE.model.Item;
//import com.BackE.model.Cart;
//import java.util.List;

@Repository
@Transactional
public class ItemDaoImpl implements ItemDao {
	@Autowired
	 private SessionFactory sessionFactory;
	 //@Autowired
	 //private Cart cart;
	
	
	public boolean addItem(Item item) {
		System.out.println("adding data in item");
		  Session session = sessionFactory.getCurrentSession();

		  try {
			  //item.setItemName(item.getItemId());
			  session.saveOrUpdate(item);
		   return true;
		  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return false;
		  }
		  
	}

	/*public void removeItem(String itemtId) {
		  Session session = this.sessionFactory.getCurrentSession();
		  Item p = (Item) session.load(Item.class, itemtId);
		  session.delete(p);
		
	}*/	
	public void removeItem(Item item) {
		Session session = sessionFactory.getCurrentSession();
		 // session.delete(item);
		 // session.flush();
		
	}

	public void removeAllItems(Item item) {
		  /*List < Item > items = items.getItems();
		  for (Item p: items) {
		  removeItem(p);
		  } */
		
	}
	

	public Item getItemByProductId(String productId,int cartId) {
		Session session = sessionFactory.getCurrentSession();
		  Query query = session.createQuery("from Item where productId = ? and cartId=?");
		  query.setParameter(0, productId);
		  query.setParameter(1,cartId);
		 // return (Item) query.getResultList();
		  return (Item) query.getSingleResult();
		
	}

	
	@SuppressWarnings("unchecked")
	  //@Override
	public List<Item> listItem() {
		Session session = this.sessionFactory.getCurrentSession();
		  List < Item > itemList = session.createQuery("from Item").list();
		  for (Item p: itemList) {
		   System.out.println("item List::" + p);

		  }
		  return itemList;
	}

	public boolean updateItem(Item item) {
		Session session = this.sessionFactory.getCurrentSession();
		try{  
			System.out.println("quantity in  dao:"+item.getItemQuantity());
			System.out.println("amount in  dao:"+item.getItemTotalAmount());
			session.update(item);
		  System.out.println("item updated successfully, item Details="+item);
		  return true;
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			return false;
			
		}
		
	}

	public Item getItemById(int itemId) {
		Session session = this.sessionFactory.getCurrentSession();
		  Item item= (Item) session.get(Item.class, itemId);
		  return item;
	}	
	

}
