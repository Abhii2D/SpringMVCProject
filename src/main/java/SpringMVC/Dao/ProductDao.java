package SpringMVC.Dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import SpringMVC.pojo.Product;

@Component
public class ProductDao {

// Autowired help to automatically take the object of hibernate template
	@Autowired
	private HibernateTemplate hibernateTemplate;

// Create 	
	@Transactional
	public void CreateProduct(Product product) {
		this.hibernateTemplate.save(product);
	}

// Fetch

	public List<Product> getProduct(Product product) {
		List<Product> productlist = this.hibernateTemplate.loadAll(Product.class);
		return productlist;
	}
	
// Fetch single product

	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}

// Delete single product
	@Transactional
	public void delete(int pid, Product product) {
		Product deleteProduct = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(deleteProduct);
	}
}
