package com.BackE.model;
import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;
//import com.fasterxml.jackson.annotation.JsonIgnore;
//import org.hibernate.validator.constraints.NotEmpty;
//import javax.persistence.*;
//import javax.validation.constraints.Digits;
//import javax.validation.constraints.Min;
//import javax.validation.constraints.Pattern;

@Entity
@Table(name="Product")
public class Product implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4860403924820769810L;
	@Id
	private String productId;
	//@NotEmpty (message = "The product name must not be null.")	 
	private String pName;
	//@Min(value = 0, message = "The product price must no be less then zero.")
	private double pPrice;
	@Column(name="pDescription")
	private String pDescription;
	private String categoryId;	
	private String supplierId;
	
	  @OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	  //@JsonIgnore
	   private List<Item> ItemList;

	@Transient
	private MultipartFile pTraImgFile;	
	@ManyToOne
	@JoinColumn(name="categoryId",insertable=false, updatable=false, nullable=false)
	Category category;
	public List<Item> getItemList() {
		return ItemList;
	}
	public void setItemList(List<Item> itemList) {
		ItemList = itemList;
	}
	@ManyToOne
	@JoinColumn(name="supplierId",insertable=false, updatable=false, nullable=false)
	Supplier supplier;
	
	/*private int pQuanity;
	public int getpQuanity() {
		return pQuanity;
	}
	public void setpQuanity(int pQuanity) {
		this.pQuanity = pQuanity;
	}*/
	/*public double getpAmount() {
		return pAmount;
	}
	public void setpAmount(double pAmount) {
		this.pAmount = pAmount;
	}*/	
	
	public double getpPrice() {
		return pPrice;
	}
	public void setpPrice(double pPrice) {
		this.pPrice = pPrice;
	}
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public String getpDescription() {
		return pDescription;
	}
	public void setpDescription(String pDescription) {
		this.pDescription = pDescription;
	}

	public MultipartFile getpTraImgFile() {
		return pTraImgFile;
	}
	public void setpTraImgFile(MultipartFile pTraImgFile) {
		this.pTraImgFile = pTraImgFile;
	}
	
	
}