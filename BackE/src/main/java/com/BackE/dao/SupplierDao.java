package com.BackE.dao;
import java.util.List;
import com.BackE.model.Supplier;
public interface SupplierDao {
	boolean addSupplier(Supplier supplier);

	public void updateSupplier(Supplier supplier);
	public List<Supplier> listSupplier();
	public void removeSupplier(String supplierId);
	//read
	public Supplier getSupplierById(String supplierId);
}




