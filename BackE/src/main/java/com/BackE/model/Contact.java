package com.BackE.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Contact")
public class Contact implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -7088109182417475805L;
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int contactId;
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getContactCountry() {
		return contactCountry;
	}
	public void setContactCountry(String contactCountry) {
		this.contactCountry = contactCountry;
	}
	//@Range(min=a,max=z)
	private String contactName;
	private String contactCountry;	

}
