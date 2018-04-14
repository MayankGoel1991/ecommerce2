package com.BackE.dao;
import java.util.List;
import com.BackE.model.Product;
public interface ProductDao {
	boolean addProduct(Product product);

	public void updateProduct(Product product);
	public List<Product> listProduct();
	public void removeProduct(String productId);
	//read
	public Product getProductById(String productId);
	public List<Product> getProductByCatId(String categoryId);
}