package com.BackE.dao;

import java.util.List;

import com.BackE.model.Contact;


public interface ContactDao {
	 boolean addContact(Contact contact);
	 public void updateContact(Contact contact);
	 public List < Contact > listContact();
	 public void removeContact(int contactId);
	 //read
	 public Contact getContactById(int contactId);
}
