package com.BackE.dao;

import java.util.List;
import com.BackE.model.Category;

public interface CategoryDao {

 boolean addCategory(Category category);
 public void updateCategory(Category category);
 public List < Category > listCategory();
 public void removeCategory(String categoryId);
 //read
 public Category getCategoryById(String categoryId);
}