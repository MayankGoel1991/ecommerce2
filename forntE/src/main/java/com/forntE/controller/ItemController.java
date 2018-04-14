package com.forntE.controller;

import java.security.Principal;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.BackE.dao.CartDao;
import com.BackE.dao.CustomerDao;
import com.BackE.dao.ItemDao;
import com.BackE.dao.ProductDao;
import com.BackE.model.Cart;
import com.BackE.model.Customer;
import com.BackE.model.Item;
import com.BackE.model.Product;

@Controller
public class ItemController {
	@Autowired
	private ItemDao itemDao;
	@Autowired
	private CustomerDao customerDao;
	@Autowired
	private CartDao cartDao;
	@Autowired
	private ProductDao productDao;
	//@Autowired
	//private Cart cart;	   
	//@Autowired
	//private HttpSession httpSession;
	
	
	@RequestMapping(value="/checkout")
	public String shipProduct(Model model){
		//model.addAttribute("product", new Product()); // the product object is used as a template to generate the form
		//model.addAttribute("ProductList",productDao.listProduct());
		//Product product = productDao.getProductById(productId);
		model.addAttribute("listItem",itemDao.listItem());
		model.addAttribute("greetings","hello world ship");
		System.out.println("In shippingOrder");
	return "shippingOrder";
	}
	
	@RequestMapping(value="/cart/baddTocart/{productId}")
	public String prodToItem(@PathVariable("productId") String productId,Model model,Principal p ,HttpServletRequest request)
	{
		String custid= p.getName();			
		Customer customer = customerDao.getCustomerById(custid);
		System.out.println("custid is" + custid);
		Cart cart=customer.getCart();
		Product product = productDao.getProductById(productId);
		System.out.println("productid of itemcontroller:" + productId);
		List < Item > listItems =cart.getItems();
		if(isExisting(listItems, productId))
		{
				Item item = itemDao.getItemByProductId(productId,cart.getCartId());                
				item.setItemQuantity(item.getItemQuantity()+1);		        
				item.setItemTotalAmount(product.getpPrice()*item.getItemQuantity());
				item.setCart(cart);
				item.setProduct(product);
				itemDao.updateItem(item);		
		}
	    else
	    {
				Item item = new Item();        	        
				item.setItemQuantity(1);
				item.setItemTotalAmount(product.getpPrice()*item.getItemQuantity());
				item.setCart(cart);
				item.setProduct(product);
				itemDao.addItem(item);    
	    }
		List < Item > listItems1 =cart.getItems();
		int totalQuantity=0;
		double totalAmount=0;
		for (int i=0; i<listItems1.size(); i++) 
		{	
			System.out.println("Quantity"+listItems1.get(i).getItemQuantity());
			System.out.println("Amount"+listItems1.get(i).getItemTotalAmount());
			totalQuantity+=listItems1.get(i).getItemQuantity();			
			totalAmount+=listItems1.get(i).getItemTotalAmount();
		}
		cart.setCartQuantity(totalQuantity);
		System.out.println("totalquantity3 is:"+cart.getCartQuantity());
		cart.setCartTotalAmount(totalAmount);
		System.out.println("carttotalamount3 is:"+cart.getCartTotalAmount());
		cartDao.updateCart(cart);
		model.addAttribute("listItem", listItems1);
		return "item";
	}
	
	
	
	 public boolean isExisting(List<Item> listItems,String productId)
       { boolean value=false;
		 for (int i=0; i<listItems.size(); i++) 
			{ 
			 if(productId.equals(listItems.get(i).getProduct().getProductId()))
				{
					value=true;
					break;
				}
			    else
			    {
			     value=false;	
			    }
			}
		 return value;
       }

	
	
	/*@RequestMapping(value = "/remove/{cartId}", method = RequestMethod.DELETE)
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void clearCart(@PathVariable(value = "cartId") int cartId) {       
 	Cart cart = cartDao.getCartById(cartId);
    cartDao.removeCart(cartId);
    }*/
	
		/*@RequestMapping("/{cartId}")
    
	public @ResponseBody
	    Cart getCartById (@PathVariable(value = "cartId") int cartId) {
	        return cartService.getCartById(cartId);
	    }*/	
	
	/*@RequestMapping(value="/adminHome/edititem/{itemId}")
	public String admineditcart(Model model,@PathVariable ("itemId") String itemId ){

		//model.addAttribute("item",itemDao.getItemById(itemId)); // the item object is used as a template to generate the form
		//model.addAttribute("catItemList",itemDao.listItem());
		
	return "item";
	}*/
	 
	/*@PostMapping(value="/item")
	public String addItem(@ModelAttribute("item") Item item,Model model,MultipartFile file){
		if (item.getItemId() == null) {
			   itemDao.addItem(item);				   
		}else {	
			 itemDao.updateItem(item);	
		  }	
		 return "redirect:/item";	
	}*/
		
	/* @GetMapping(value = "/adminHome/deleteitem/{productId}")	
	 //@ResponseStatus(value = HttpStatus.NO_CONTENT)
	 public String removeitemproduct(Model model, @PathVariable ("productId") String productId) {
		 //Item item = itemDao.getItemByProductId(productId,cartId);
	       // itemDao.removeItem(item);	 
		  return "redirect:/item";	
	 }	*/
}
