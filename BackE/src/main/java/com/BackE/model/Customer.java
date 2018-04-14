package com.BackE.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


//import com.fasterxml.jackson.annotation.JsonIgnore;
//import org.hibernate.validator.constraints.NotEmpty;
//import javax.persistence.*;
//import java.io.Serializable;

@Entity
@Table(name = "Customer")
public class Customer implements Serializable {

 /**
	 * 
	 */
	private static final long serialVersionUID = 3426092306847338946L;

@Id
 private String customerId;
 
 @OneToOne  
 @JoinColumn(name="shipingId")
 private Shipping shipping;
 
 @OneToOne
 @JoinColumn(name="cartId")
 private Cart cart;

 public Cart getCart() {
	return cart;
}
public void setCart(Cart cart) {
	this.cart = cart;
}
@OneToOne  
 @JoinColumn(name="billingId")
 private Billing billing;
 public Shipping getShipping() {
	return shipping;
}
public void setShipping(Shipping shipping) {
	this.shipping = shipping;
}
public Billing getBilling() {
	return billing;
}
public void setBilling(Billing billing) {
	this.billing = billing;
}
public String getCustomerId() {
  return customerId;
 }
 public void setCustomerId(String customerId) {
  this.customerId = customerId;
 }
 //@NotEmpty(message = "The customer name must not be null.")
 private String cName;
 @Column(name = "cpassword")
 //@NotEmpty(message = "The customer password must not be null.")
 private String cpassword;
 private String pLastName;
 // @NotEmpty(message = "The customer email must not be null.")
 private String pEmail;
 
 private long pContact;
 private boolean active;
 //@NotEmpty(message = "The customer username must not be null.")
 //private String username;
public boolean isActive() {
	return active;
}
public void setActive(boolean active) {
	this.active = active;
}
public String getCpassword() {
  return cpassword;
 }
 public void setCpassword(String cpassword) {
  this.cpassword = cpassword;
 }
public String getpLastName() {
  return pLastName;
 }
 public void setpLastName(String pLastName) {
  this.pLastName = pLastName;
 }
 public String getpEmail() {
  return pEmail;
 }
 public void setpEmail(String pEmail) {
  this.pEmail = pEmail;
 }

 public long getpContact() {
  return pContact;
 }
 public void setpContact(long pContact) {
  this.pContact = pContact;
 }

 public String getcName() {
  return cName;
 }
 public void setcName(String cName) {
  this.cName = cName;
 }

}