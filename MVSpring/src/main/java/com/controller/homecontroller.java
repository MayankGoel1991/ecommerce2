package com.controller;

//import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
//import org.springframework.stereotype.Service;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;

//import com.model.Product;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;

//import com.eyebook.service.ProductService;

//@Component
//@Service
@Controller
public class homecontroller {
	@RequestMapping(value="/greeting")
	public String home(Model model)
	{
		//ModelAndView model = new ModelAndView("index");
		model.addAttribute("greeting", "Hello World");
		return "index";
	}
	
	 
	
}





	/*
	 * 
	 * @RequestMapping(value="/index")
	public ModelAndView hiiworld(){

	ModelAndView model = new ModelAndView("index");
	return model;
	}
	
	 
	
	} @RequestMapping("/sweets")
	public  ModelAndView hWorld(){
       
		ModelAndView model = new ModelAndView("sweets");

		return  model;
	}
	@RequestMapping("/sports")
	public  ModelAndView World(){
       
		ModelAndView model = new ModelAndView("sports");

		return  model;
	}

	
	@Autowired(required=true)
	private ProductService productService;
	
	public void setProductService(ProductService productService){
		this.productService = productService;
	}	
	@RequestMapping(value = "/all/product/getAllUser", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("Product", new Product());
		model.addAttribute("listProducts", this.productService.listProduct());
		return "Product";
	}
	
	//For add and update Product both
	@RequestMapping(value= "/addProduct", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("Product") Product product){
		
		if(product.getId()==0){
			//new Product, add it
			this.productService.addProduct(product);
		}else{
			//existing Product, call update
			this.productService.updateProduct(product);
		}
		
		return "redirect:/all/product/getAllUser";
		
	}
	
	@RequestMapping("/remove/{id}")
    public String removeProduct(@PathVariable("id") int id){
		
        this.productService.removeProduct(id);
        return "redirect:/all/product/getAllUser";
    }
	 @RequestMapping("/edit/{id}")
	    public String editPerson(@PathVariable("id") int id, Model model){
	        model.addAttribute("product");
	        model.addAttribute("listPersons", this.productService.listProduct());
	        return "product";
	    }*/

