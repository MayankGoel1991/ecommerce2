package com.BackE.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Shipping")
public class Shipping {
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private int shipingId;
	 public int getShipingId() {
		return shipingId;
	}
	public void setShipingId(int shipingId) {
		this.shipingId = shipingId;
	}
	private long shipZip;
	 private String shipCountry;
	 private String shipState;
	 private String shipCity;
	 
	 @OneToOne
	 Customer customer;
	 
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public long getShipZip() {
		return shipZip;
	}
	public void setShipZip(long shipZip) {
		this.shipZip = shipZip;
	}
	public String getShipCountry() {
		return shipCountry;
	}
	public void setShipCountry(String shipCountry) {
		this.shipCountry = shipCountry;
	}
	public String getShipState() {
		return shipState;
	}
	public void setShipState(String shipState) {
		this.shipState = shipState;
	}
	public String getShipCity() {
		return shipCity;
	}
	public void setShipCity(String shipCity) {
		this.shipCity = shipCity;
	}
}
