package dao;

import java.util.List;

import model.Product;

public interface ProductDAO {
	
	//CRUD
	
	Product create(Product product);
	List<Product> readAll();
	Product readById(Integer id);
	Product update(Product product);
	Boolean delete(Product product);
	Boolean delete(Integer id);
}

