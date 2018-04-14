package com.forntE.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.BackE.dao.SupplierDao;
import com.BackE.model.Supplier;
@Controller
public class SupplierController {
	@Autowired
	private SupplierDao supplierDao;
	
	
	@RequestMapping(value="/supplier")
	public String homeSupplier(Model model){
		model.addAttribute("supplier", new Supplier()); // the supplier object is used as a template to generate the form
		model.addAttribute("SupplierList",supplierDao.listSupplier());
		
		//model.addAttribute("greetings","hello world");
	    //System.out.println("In category");
	return "supplier";
	}
	

	@RequestMapping(value="/admin/editsupplier/{supplierId}")
	public String admineditSupplier(Model model,@PathVariable ("supplierId") String supplierId ){

		model.addAttribute("supplier",supplierDao.getSupplierById(supplierId)); // the product object is used as a template to generate the form
		model.addAttribute("SupplierList",supplierDao.listSupplier());
		//model.addAttribute("greetings","hello world");

	return "supplier";
	}
	@PostMapping(value="/supplier")
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier,Model model){
		
		 if (supplier.getSupplierId() == null) {
			 supplierDao.addSupplier(supplier);
			  } else {
				  supplierDao.updateSupplier(supplier);
			  }
			  
			  return "redirect:/supplier";
			 }
/*
	Supplier supplier=new Supplier();
	supplier.setsName(sName);
	System.out.println(sName);
	supplier.setSupplierId(supplierId);
	System.out.println(supplierId);
	supplier.setsDescription(sDescription);
	System.out.println(sDescription);
	supplierDao.addSupplier(supplier);
	supplierDao.updateSupplier(supplier);      mayank
	supplierDao.removeSupplier(supplierId);   mayank
	model.addAttribute("greetings","you are susscessful");
	return "supplier";
*/	
	
	
	@GetMapping(value = "/admin/deletesupplier/{supplierId}")
	 public String adminremoveSupplier(Model model, @PathVariable("supplierId") String supplierId) {
		supplierDao.removeSupplier(supplierId);
	  return "redirect:/supplier";
	 }
}


