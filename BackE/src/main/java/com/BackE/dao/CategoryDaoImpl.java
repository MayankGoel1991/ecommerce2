package com.BackE.dao;

import java.util.List;
//import javax.transaction.Transactional;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.annotations.common.util.impl.Log_.logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.BackE.model.Category;


@Repository
@Transactional
public class CategoryDaoImpl implements CategoryDao {


 @Autowired
 private SessionFactory sessionFactory;
 //@Autowired
 //private Category category;
 public boolean addCategory(Category category) {
  System.out.println("adding data in category");
  Session session = sessionFactory.getCurrentSession();

  try {
	  category.setCategoryId(category.getCategoryName());
   session.persist(category);
   return true;
  } catch (HibernateException e) {
   System.out.println(e.getMessage());
   e.printStackTrace();
   return false;
  }


 }
 public void updateCategory(Category category) {
  Session session = this.sessionFactory.getCurrentSession();
  session.update(category);
  System.out.println("category updated successfully, category Details="+category);
 }
 @SuppressWarnings("unchecked")
  //@Override
 public List < Category > listCategory() {
  Session session = this.sessionFactory.getCurrentSession();
  List < Category > categoryList = session.createQuery("from Category").list();
  for (Category p: categoryList) {
   System.out.println("category List::" + p);

  }
  return categoryList;
 }

 //@Override
 public void removeCategory(String categoryId) {
  Session session = this.sessionFactory.getCurrentSession();
  Category p = (Category) session.load(Category.class, categoryId);
  session.delete(p);
 }
 public Category getCategoryById(String categoryId) {
  Session session = this.sessionFactory.getCurrentSession();
  Category category = (Category) session.get(Category.class, categoryId);
  return category;
 }


}