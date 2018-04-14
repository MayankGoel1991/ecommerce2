package com.BackE.dao;

import java.io.IOException;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.BackE.model.Cart;

@Repository("CartDao")
@Transactional
public class CartDaoImpl implements CartDao {
	
	 @Autowired(required = true)
	 private SessionFactory sessionFactory;
	//private final Logger logger = LoggerFactory.getLogger(CartDAOImpl.class);
	 //@Autowired
	 //private Cart cart;
	
	 public boolean updateCart(Cart cart) {
		 System.out.println("Starting update method in cartDao");
		 
		  try {
			   sessionFactory.getCurrentSession().update(cart);
				  System.out.println("cart updated successfully, cart Details="+cart);

			   return true;
			  } catch (HibernateException e) {
				  System.out.println(e.getMessage());
			   e.printStackTrace();
			   return false;
			  }
	 }	
	 //@Override
	 public void removeCart(int cartId) {
		 System.out.println("Starting delete method of cartdaoimpl");
	  Session session = this.sessionFactory.getCurrentSession();
	  Cart p = (Cart) session.load(Cart.class, cartId);
	  session.delete(p);
	  /*try {
		   sessionFactory.getCurrentSession().delete(getCartById(cartId));
		   return true;
		  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return false;
		  }*/
	 }
	
	public boolean addCart(Cart cart) {
		System.out.println("adding data in cart Starting save method of cartdaoimpl");
		  //Session session = sessionFactory.getCurrentSession();
		  System.out.println("cartdao save method is invoked ");
		  try {
			  //cart.setCartName(cart.getCartId());
			 // sessionFactory.getCurrentSession().save(cart);
		   return true;
		  }catch (HibernateException e) {
			   System.out.println(e.getMessage());
			   e.printStackTrace();
			   return false;
			  }
	}
	
	
	public int getQuantity(String cName, String pName) {
		return 0;
		 /*try {
			   System.out.println("Starting getquantity method of cartdaoimpl");

			   Query query = sessionFactory.getCurrentSession().createQuery("SELECT quantity from Cart WHERE username='" + cName + "' and product_name='" + pName + "' and status = 'NEW'");
			   logger.info("Ending getquantity method of cartdaoimpl");
			   return (Integer) query.uniqueResult();
			  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return false;
		  }*/
	}
	public long getTotalAmount(String cName) {
		 System.out.println("Starting getTotalAmount method in cartDao");
		  /*try {
		   Query query = sessionFactory.getCurrentSession().createQuery(
		    "SELECT SUM(price*quantity) FROM Cart where username='" + cName + "' and status = 'NEW'");
		   if (query.uniqueResult() == null) {
		    return 0;
		   } else {
		    long result = (Long) query.uniqueResult();
		    return result;
		   }

		  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return false;
		  }*/
		return 0;
	}
	
	public long getNumberOfProducts(String cName) {
		System.out.println("Starting getNumberOfProducts method in cartDao");
		 /* try {
		   Query query = sessionFactory.getCurrentSession()
		    .createQuery("SELECT SUM(quantity) FROM Cart where username='" + cName + "' and status = 'NEW'");
		   if (query.uniqueResult() == null) {
		    return 0;
		   } else {
		    long result = (Long) query.uniqueResult();
		    return result;
		   }
		  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return getNumberOfProducts(cName);
		  }*/
		return 0;
	}
	public int clearCart(String cName) {
		 System.out.println("Starting clearCart method in cartDao");
		  try {
		   
		   /* * Query query = sessionFactory.getCurrentSession()
		    * .createQuery("UPDATE Cart SET status='OLD' where username = '" +
		    * cName + "'");*/
		    
		   Query query = sessionFactory.getCurrentSession()
		    .createQuery("DELETE from Cart where username = '" + cName + "'");
		   return query.executeUpdate();

		  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return clearCart(cName);
		  }
	}
	
	
	public Cart getCartById(int cartId) {
		 Session session = this.sessionFactory.getCurrentSession();
		  Cart cart= (Cart) session.get(Cart.class, cartId);
		  System.out.println("Starting getCartById method in cartDao");
		  /*try {
		   return sessionFactory.getCurrentSession().get(Cart.class, cartId);
		  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return false;
		  }*/
		  return cart;
	}
	public Cart validate(int cartId) throws IOException {
		System.out.println("Starting validate method in cartDao");
		  Cart cart = getCartById(cartId);
		  if (cart == null) {
		   throw new IOException(cartId + "");
		  }
		  updateCart(cart);
		  return cart;
	}
	 @SuppressWarnings("unchecked")
	  //@Override
	public List<Cart> listCart(String productId) {
		 System.out.println("Starting listCart method in cartDao");
			Session session = this.sessionFactory.getCurrentSession();
			  List < Cart > cartList = session.createQuery("from Cart").list();
			  for (Cart p: cartList) {
			   System.out.println("cart List::" + p);
			   /*try {
				   Query query = sessionFactory.getCurrentSession()
				    .createQuery("from Cart where username = '" + cName + "' and status='NEW'");
				   return query.list();
				  } catch (HibernateException e) {
			   System.out.println(e.getMessage());
			   e.printStackTrace();
			   return false;
			  }*/

			  }
			  return cartList;
	}
	public Cart getCartByCustomer(String cName, String pName) {
		/*try {
		   System.out.println("Starting getcartbyusername method of cartdaoimpl");
	
		   Query query = sessionFactory.getCurrentSession().createQuery("from Cart WHERE username='" + cName + "' and product_name='" + pName + "' and status = 'NEW'");
		   System.out.println("Ending getcartbyusername method of cartdaoimpl");
		   return (Cart) query.uniqueResult();
		  } catch (HibernateException e) {
		   System.out.println(e.getMessage());
		   e.printStackTrace();
		   return getCartByUsername(cName, pName);
		  }*/
		return null;
	}
	
	
}
