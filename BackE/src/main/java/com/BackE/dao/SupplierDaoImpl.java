package com.BackE.dao;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.BackE.model.Supplier;

@Repository
@Transactional
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;
	public boolean addSupplier(Supplier supplier) {
		System.out.println("adding data in suplier");
		Session session=sessionFactory.getCurrentSession();
		
		try{
			supplier.setSupplierId(supplier.getsName());
			session.persist(supplier);
			return true;
		}
		catch(HibernateException e){
			System.out.println(e.getMessage());
			e.printStackTrace();
		return false;
		}
		
		
	}
	public void updateSupplier(Supplier supplier) {
		 Session session = this.sessionFactory.getCurrentSession(); 
		session.update(supplier); 
		 // logger.info("customer updated successfully, customer Details="+customer);
		
	}
	 @SuppressWarnings("unchecked") 
	 //@Override
	public List<Supplier> listSupplier() {
		 Session session = this.sessionFactory.getCurrentSession(); 
		  List<Supplier> supplierList = session.createQuery("from Supplier").list(); 
		  for(Supplier p : supplierList){ 
		//   logger.info("customer List::"+p); 
			  System.out.println("supplier List::"+p); 
		  
		  }
		  return supplierList;
	 } 
	//@Override
	public void removeSupplier(String supplierId) {
		 Session session = this.sessionFactory.getCurrentSession(); 
		  Supplier p = (Supplier) session.load(Supplier.class,supplierId); 
		  session.delete(p); 
	}
	public Supplier getSupplierById(String supplierId) {
		Session session = this.sessionFactory.getCurrentSession(); 
		Supplier supplier= (Supplier)session.get(Supplier.class,supplierId); 
		return supplier;
	}	
}
