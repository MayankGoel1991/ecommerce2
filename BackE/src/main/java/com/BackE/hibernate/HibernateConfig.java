package com.BackE.hibernate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.BackE.model.Billing;
import com.BackE.model.Cart;
import com.BackE.model.Category;
import com.BackE.model.Contact;
import com.BackE.model.Customer;
import com.BackE.model.Item;
import com.BackE.model.Order;
import com.BackE.model.Product;
import com.BackE.model.Role;
import com.BackE.model.Shipping;
import com.BackE.model.Supplier;
import java.util.Properties;
//import javax.annotation.sql.DataSourceDefinition;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages="com")
public class HibernateConfig {
	@Bean(name="dataSource")
	 public DataSource	getDatabase()
	 {
		BasicDataSource driverMgr=new BasicDataSource();
		driverMgr.setDriverClassName("org.h2.Driver");
		driverMgr.setPassword("h2");
		driverMgr.setUsername("h2");
		driverMgr.setUrl("jdbc:h2:tcp://localhost/~/s180250");
		return driverMgr;
		
	 }
		
	public Properties getHibernateProperties()
	{
		
		Properties properties=new Properties();
		properties.setProperty("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		properties.setProperty("hibernate.show_sql","true");
		properties.setProperty("hibernate.hbm2ddl.auto","update");
		return properties;
	}

	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource)
	{
		LocalSessionFactoryBuilder sessionFactory=new 
				LocalSessionFactoryBuilder(dataSource);
		sessionFactory.addAnnotatedClass(Order.class);
		sessionFactory.addAnnotatedClass(Customer.class);
		sessionFactory.addAnnotatedClass(Category.class);
		sessionFactory.addAnnotatedClass(Supplier.class);
		sessionFactory.addAnnotatedClass(Product.class);
		sessionFactory.addAnnotatedClass(Role.class);
		sessionFactory.addAnnotatedClass(Billing.class);
		sessionFactory.addAnnotatedClass(Shipping.class);
		sessionFactory.addAnnotatedClass(Cart.class);
		sessionFactory.addAnnotatedClass(Item.class);		
		sessionFactory.addAnnotatedClass(Contact.class);		
		sessionFactory.addProperties(getHibernateProperties());
		
		return sessionFactory.buildSessionFactory();
	}

	@Autowired
	@Bean(name="hibernateTransactionManager")
	HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory)
	{
		HibernateTransactionManager htm=new HibernateTransactionManager();
		htm.setSessionFactory(sessionFactory);
		return htm;

	}
}
