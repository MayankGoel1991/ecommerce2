package com.BackE.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Billing")
public class Billing {
	@Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	 private int billingId;
	 public int getBillingId() {
		return billingId;
	}
	public void setBillingId(int billingId) {
		this.billingId = billingId;
	}
	private long bilZip;
	 private String bilCountry;
	public long getBilZip() {
		return bilZip;
	}
	public void setBilZip(long bilZip) {
		this.bilZip = bilZip;
	}
	public String getBilCountry() {
		return bilCountry;
	}
	public void setBilCountry(String bilCountry) {
		this.bilCountry = bilCountry;
	}
	public String getBilState() {
		return bilState;
	}
	public void setBilState(String bilState) {
		this.bilState = bilState;
	}
	public String getBilCity() {
		return bilCity;
	}
	public void setBilCity(String bilCity) {
		this.bilCity = bilCity;
	}
	private String bilState;
	 private String bilCity;
	 public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	@OneToOne
	 Customer customer;
	 
}
