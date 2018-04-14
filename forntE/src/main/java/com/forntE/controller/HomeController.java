package com.forntE.controller;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
//import com.BackE.dao.BillingDao;
import com.BackE.dao.CategoryDao;
//import org.springframework.web.multipart.MultipartFile;
import com.BackE.dao.CustomerDao;
import com.BackE.dao.ProductDao;
import com.BackE.dao.SupplierDao;
import com.BackE.model.Billing;
import com.BackE.model.Cart;
//import com.BackE.model.Billing;
//import com.BackE.dao.ProductDao;
import com.BackE.model.Customer;
import com.BackE.model.Product;
import com.BackE.model.Shipping;

@Controller
public class HomeController {
	@Autowired
	private ProductDao productDao;
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	//@Autowired
	//private HttpSession httpSession;
	//@Autowired
	//private BillingDao billingDao;
	@Autowired
	private CustomerDao customerDao;
	@Autowired
	private SupplierDao supplierDao;
	@Autowired
	 private CategoryDao categoryDao;
	@Autowired
	private HttpSession httpSession;
	
	@RequestMapping(value="/")
	//@PathVariable("categoryId") String categoryId,, HttpServletRequest request
	public String home(Model model){
		//ModelAndView model = new ModelAndView("index");
		httpSession.setAttribute("categoryList",categoryDao.listCategory());
		model.addAttribute("greeting", " index spring security Hello World this is welcome page");
		//model.addAttribute("productCatList",productDao.getProductByCatId(categoryId));
		return "index";
	}
	@RequestMapping(value="/login")
	public String login(Model model){
		//ModelAndView model = new ModelAndView("index");
		model.addAttribute("greetingss", "login spring security Hello World this is welcome page");
		//model.addAttribute("CustomerList",customerDao.listCustomer());
		//model.addAttribute("error", "true");
		return "login";
	}
	@RequestMapping(value="/contact")
	public String contact(Model model){
		//ModelAndView model = new ModelAndView("index");
		model.addAttribute("greetingss", "login spring security Hello World this is welcome page");
		//model.addAttribute("CustomerList",customerDao.listCustomer());
		//model.addAttribute("error", "true");
		return "contact";
	}
	@RequestMapping(value="/admin")
	public String homeadmin(Model model){
		model.addAttribute("greeting", "admin spring security Hello World this is protected page");
		model.addAttribute("product", new Product());
		model.addAttribute("ProductList",productDao.listProduct());
		model.addAttribute("SupplierList",supplierDao.listSupplier());
		model.addAttribute("CategoryList", categoryDao.listCategory());
		return "admin";
	}
	@RequestMapping(value="/LogOut")
	public String homeLogOut(Model model){
		//ModelAndView model = new ModelAndView("index");
		model.addAttribute("greeting", "home logout successful Hello World");
		return "/";
	}

	@RequestMapping(value="/403")
	public String error403(Model model){
		//ModelAndView model = new ModelAndView("index");
		model.addAttribute("greeting", "error page Hello World");
		return "403";
	}

	@RequestMapping(value="/register")
	public String homeRegister(Model model){
		Billing billing = new Billing();
		Shipping shipping = new Shipping();
		Customer customer = new Customer();
		Cart cart = new Cart();
		customer.setBilling(billing);
		customer.setShipping(shipping);
		customer.setCart(cart);
		model.addAttribute("CustomerList",customerDao.listCustomer());
		model.addAttribute("greetings","register hello world");
		model.addAttribute("customer", customer); // the customer object is used as a template to generate the form
		System.out.println("In registermethod");
		//model.addAttribute("BillingList",billing);
		//model.addAttribute("ShippingList",shipping);
		model.addAttribute("greetings","billing register hello world");
		System.out.println("In billing register method");
	return "register";
	}
	
	
	@PostMapping(value="/register")
	public String registerUser(@ModelAttribute("customer")Customer customer,Model model){
		 System.out.println("user is going to register");
		 System.out.println(customer.getcName());
		 customerDao.addCustomer(customer);	
		 
		 System.out.println("user is going to billing register");
		// System.out.println(billing.getBilFirstName());
		// billingDao.addBilling(billing);
		  return "login";
		  
	}
	
	
	 @GetMapping(value = "/admin/deletecustomer/{customerId}")
	 public String removeCustomer(Model model, @PathVariable("customerId") String customerId) {
		 customerDao.removeCustomer(customerId);
	  return "redirect:/register";
	 }
	 

}
