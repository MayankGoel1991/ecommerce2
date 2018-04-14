package com.forntE.controller;
//import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.BackE.dao.CategoryDao;
import com.BackE.model.Category;

@Controller
public class CategoryController {
 @Autowired
 private CategoryDao categoryDao;
 
 @RequestMapping(value = "/admin/category")
 public String homeCategory(Model model) {
  model.addAttribute("category", new Category()); // the Category object is used as a template to generate the form
  model.addAttribute("CategoryList", categoryDao.listCategory());
  return "category";
 }

 @RequestMapping(value = "/admin/editcategory/{categoryId}")
 public String editCategory(Model model, @PathVariable("categoryId") String categoryId) {
  model.addAttribute("category", categoryDao.getCategoryById(categoryId)); // the Category object is used as a template to generate the form
  model.addAttribute("CategoryList", categoryDao.listCategory());
   return "category";
 }

 
 @GetMapping(value = "/admin/deletecategory/{categoryId}")
 public String removeCategory(Model model, @PathVariable("categoryId") String categoryId) {
  categoryDao.removeCategory(categoryId);
  return "redirect:/admin/category";
 }

 
 @PostMapping(value = "/admin/category")
 public String addCategory(/*@Valid*/ @ModelAttribute("category") Category category, Model model,BindingResult result) {
  System.out.println("result has errors:" + result.hasErrors());
  if(result.hasErrors()){
	  return "register";
  }
	 if (category.getCategoryId() == null) {
   categoryDao.addCategory(category);
  } else {
   categoryDao.updateCategory(category);
  }
  
  return "redirect:/admin/category";
 }

}