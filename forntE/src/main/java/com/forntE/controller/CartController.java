package com.forntE.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.BackE.dao.CartDao;
import com.BackE.model.Billing;
//import com.BackE.dao.CustomerDao;
import com.BackE.model.Cart;
//import com.BackE.model.Customer;
import com.BackE.model.Shipping;

@Controller
public class CartController {
	// private final Logger logger = LoggerFactory.getLogger(CartController.class);
	@Autowired
	private CartDao cartDao;
	/*@Autowired
	private ProductDao productDao;*/
	
/*	 
	 @Autowired
	 private Product product;
	 @Autowired
	 private CustomerDao customerDao;
	 @Autowired(required = true)
	 private Cart cart;*/
	
	@RequestMapping(value="/cart")
	public String homeCart(Model model){
		//model.addAttribute("cart", new Cart()); // the cart object is used as a template to generate the form
		//model.addAttribute("CartList",cartDao.listCart());
		//httpSession.setAttribute("categoryList",categoryDao.listCategory());
		//httpSession.setAttribute("SupplierList",supplierDao.listSupplier());
		 		
		model.addAttribute("greetings","hello world");
		System.out.println("In cart");
	return "cart";
	}

	@RequestMapping(value="/cart/{productId}")
	public String homeadminProdCart(@PathVariable("productId") String productId,Model model, HttpServletRequest request){
		//model.addAttribute("listCart",cartDao.listCart(productId));
		//List<Cart> product = cartDao.listCart(productId);
		Cart cart= new Cart();
		cartDao.addCart(cart);
		//cart.setCartQuantity(cartQuantity);
		//cart.setCartTotalAmount(cartTotalAmount);
		//cart.setCustomer(customer);
		//cart.setItems(items);
		//cart.setCartName(cName);
		//cart.setStatus("OLD");
		//cart.setCartStatus("NEW");				       
		//Cart cart = customer.getCart();
		model.addAttribute("greetings","hello world add to cart");
	    System.out.println("In cart adding product to cart");
	return "cart";
	}
	/*@RequestMapping(value="/checkout")
	public String shipProduct(Model model){
		//model.addAttribute("product", new Product()); // the product object is used as a template to generate the form
		//model.addAttribute("ProductList",productDao.listProduct());
		//Product product = productDao.getProductById(productId);
		//Billing billing = new Billing();
		//Shipping shipping = new Shipping();
		//Cart cart = new Cart();
		//cart.setBilling(billing);
		//cart.setShipping(shipping);
		//model.addAttribute("cart", cart); 
		//model.addAttribute("listItem",itemDao.listItem());
		model.addAttribute("greetings","hello world ship");
		System.out.println("In shippingOrder");
	return "shippingOrder";
	}*/
	/*@RequestMapping(value="/cart/{categoryId}")
	public String prodToCart(@PathVariable("productId") String productId, RedirectAttributes redirect,Model model, HttpServletRequest request,Principal p){
		System.out.println("addtocart");
		System.out.println("Starting addtocart method in CartController");
		//model.addAttribute("productCartList",cartDao.getCartById(categoryId));
		try {
			   Cart cart = new Cart();
			   Product product = productDao.getProductById(productId);
			   System.out.println(product.getpName());
			   cart.setCartName(product.getpName());
			   cart.setCartPrice(product.getpPrice());
			   //cart.setDateAdded(new Date());

			   if (loggedInUsername == null) {

			   	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			   	String username = auth.getName();
			   	loggedInUsername = username;

			   }

			   String username = p.getName();
			   String cName;
			System.out.println("username: " + cName);
			   cart.setCartName(cName);
			   cart.setCartStatus("NEW");
			   Customer customer = CustomerDao.getCustomerById(customerId);
			   System.out.println(customer.getCustomerId());
			   cart.setCartId(customer.getCustomerId());
			   Cart existCart = cartDao.getCartByUsername(cName, cart.getCartName());
			   System.out.println(product.getpName());
			   if (existCart != null) {
			    int currentQuantity = cartDao.getQuantity(cName, cart.getCartName());
			    cart.setCartId(existCart.getCartId());
			    cart.setCartQuantity(currentQuantity + 1);
			    boolean flag = cartDao.updateCart(cart);

			    if (flag) {

			     redirect.addFlashAttribute("success", product.getpName() + " " + "Successfully added to cart!");
			     session.setAttribute("numberProducts", cartDao.getNumberOfProducts(username));
			     return "redirect:/myCart/all";

			    } else {
			     redirect.addFlashAttribute("error", "Failed to add product to cart!");
			     return "redirect:/CatProduct";
			    }
			   } else {
			    System.out.println("first time product is going to add");
			    cart.setCartQuantity(1);
			    boolean flag = cartDao.addCart(cart);

			    if (flag) {

			     redirect.addFlashAttribute("success", product.getpName() + " " + "Successfully added to cart!");
			     session.setAttribute("numberProducts", cartDao.getNumberOfProducts(username));
			     return "redirect:/myCart/all";

			    } else {
			     redirect.addFlashAttribute("error", "Failed to add product to cart!");
			     return "redirect:/CatProduct";
			    }
			   }

			  } catch (Exception e) {
			   logger.error("Exception occured " + e);
			   model.addAttribute("catchError", "Server is not responding please try again letter.");
			   return "Cart";
			  }

		return "product_added";
		
	}*/
	@RequestMapping(value="cart/shopping_cart/{cartId}")
	public String cartAddToCat(@PathVariable("cartId") String cartId,Model model, HttpServletRequest request){
		//model.addAttribute("productCartList",cartDao.getCartById(cartId));
		return "shopping_cart";
	}
	
	@RequestMapping(value="/adminHome/editcart/{cartId}")
	public String admineditcart(Model model,@PathVariable ("cartId") String cartId ){

		//model.addAttribute("cart",cartDao.getCartById(cartId)); // the cart object is used as a template to generate the form
		//model.addAttribute("CartList",cartDao.listCart());
		
	return "cart";
	}
	
	@RequestMapping(value="/all")
	public String getCart(Model model,@PathVariable ("cartId") String cartId ){
		System.out.println("Starting getCart method in CartController");
		/*  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		  String username = auth.getName();
		  String loggedInUsername = username;
		  httpSession.setAttribute("numberProducts", cartDao.getNumberOfProducts(loggedInUsername));
		  httpSession.setAttribute("cartList", cartDao.getCartList(loggedInUsername));
		  httpSession.setAttribute("totalAmount", cartDao.getTotalAmount(loggedInUsername));*/
		  return "Cart";
	}
	@RequestMapping(value="/clearCart")
	public String clearCart(RedirectAttributes redirect,Model model,@PathVariable ("cartId") String cartId ){

		System.out.println("Starting clearCart method in CartController");
		/* try {
		   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		   String cName = auth.getName();
		   int flag = cartDao.clearCart(cName);

		   if (flag >= 1) {
		    redirect.addFlashAttribute("success", "All Items removed successfully.");
		    return "redirect:/myCart/all";
		   } else {
		    redirect.addFlashAttribute("error", "Failed to clear cart!");
		    return "redirect:/myCart/all";
		   }

		  } catch (Exception e) {
		  // logger.error("Exception occured " + e);
		   model.addAttribute("catchError", "Server is not responding please try again letter.");
		   return "error";
		  }		 */
		return cartId;
	}
	@PostMapping(value="/cart")
	public String addCart(@ModelAttribute("cart") Cart cart,Model model,MultipartFile file){
		if (cart.getCartId() == 0) {
			   cartDao.addCart(cart);	}			   
			  		   else {	
			 cartDao.updateCart(cart);	
		  }	
		 return "redirect:/cart";
		 
	
	}
		
	 @GetMapping(value = "/adminHome/deleteproduct/{cartId}")	
	 public String adminremoveCategory(Model model, @PathVariable ("cartId") String cartId,RedirectAttributes redirect) {
		 //cartDao.removeCart(cartId);	
		 System.out.println("Starting deleteCartItem method in CartController");
		  /*try {
		   Cart cart = cartDao.getCartById(cartId);

		   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		   String username = auth.getName();

		   int checkQ = cartDao.getQuantity(cName, cart.getpName());

		   if (checkQ > 1) {
		    cart.setCartQuantity(checkQ - 1);
		    cartDao.updateCart(cart);
		    redirect.addFlashAttribute("success", "Cart updated successfully.");
		    return "redirect:/myCart/all";
		   } else {
		    // cart.setStatus("OLD");
		    cartDao.removeCart(cartId);
		    redirect.addFlashAttribute("success", "Item removed successfully.");
		    return "redirect:/myCart/all";
		   }
		  } catch (Exception e) {
		   logger.error("Exception occured " + e);
		   model.addAttribute("catchError", "Server is not responding please try again letter.");
		   return "error";
		  }*/

		  return "redirect:/cart";	
	 }
}
