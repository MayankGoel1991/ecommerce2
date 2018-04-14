package com.BackE.model;
import java.io.Serializable;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name="Supplier")
public class Supplier implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1365415566159033020L;
	@Id
	//@GeneratedValue(strategy=GenerationType.AUTO)
	private String supplierId;
	private String sName;
	@Column(name="sDescription")
	private String sDescription;
	@OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.REMOVE,mappedBy="supplier")
	private Set<Product> suppliers;
	public Set<Product> getSuppliers() {
		return suppliers;
	}
	public void setSuppliers(Set<Product> suppliers) {
		this.suppliers = suppliers;
	}
	public String getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(String supplierId) {
		this.supplierId = supplierId;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public String getsDescription() {
		return sDescription;
	}
	public void setsDescription(String sDescription) {
		this.sDescription = sDescription;
	}
	

}
