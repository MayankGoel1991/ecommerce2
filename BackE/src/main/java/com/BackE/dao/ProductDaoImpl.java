package com.BackE.dao;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.BackE.model.Product;

@SuppressWarnings("deprecation")
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	private SessionFactory sessionFactory;
	public boolean addProduct(Product product) {
		System.out.println("adding data in product");
		Session session=sessionFactory.getCurrentSession();
		System.out.println("pTraImgFile");
		try{
			product.setProductId(product.getpName());
			session.persist(product);
			
			return true;
		}
		catch(HibernateException e){
			System.out.println(e.getMessage());
			e.printStackTrace();
		return false;
		}
	}
	
	public void updateProduct(Product product) {
		 Session session = this.sessionFactory.getCurrentSession(); 
		session.update(product); 
		System.out.println("product updated successfully, product Details="+product);
		
	}
	 @SuppressWarnings("unchecked") 
//	 @Override
	public List<Product> listProduct() {
		 Session session = this.sessionFactory.getCurrentSession(); 
		  List<Product> productList = session.createQuery("from Product").list(); 
		  for(Product p : productList){ 
			  System.out.println("product List::"+p); 		  
		  }
		  return productList;
	 } 
	
	//@Override
	public void removeProduct(String productId) {
		 Session session = this.sessionFactory.getCurrentSession(); 
		 Product p = (Product) session.load(Product.class, productId); 
		   session.delete(p); 
		}
	public Product getProductById(String productId) {
		Session session = this.sessionFactory.getCurrentSession(); 
		Product product= (Product)session.get(Product.class, productId); 
		return product;
	}
	@SuppressWarnings("unchecked") 
	public List<Product> getProductByCatId(String categoryId) {
		Session session = this.sessionFactory.getCurrentSession(); 
		
		
				Query query=session.createQuery("from Product where categoryId=?"); 
				//Query<Product> query=session.createQuery("from Product where categoryId=?");
				query.setParameter(0, categoryId);
				List<Product> productCatList = (List<Product>)query.getResultList();
		for(Product p : productCatList){ 
			  System.out.println("product Category List::"+p); 		  
		}
		return productCatList;
	}
}