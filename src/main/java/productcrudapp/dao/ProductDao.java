package productcrudapp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productcrudapp.model.Product;

@Component
public class ProductDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void createPruduct(Product product) {

		this.hibernateTemplate.saveOrUpdate(product);

	}

	public List<Product> getProducts() {

		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;

	}

	@Transactional
	public void deleteProduct(int id) {

		Product product = this.hibernateTemplate.load(Product.class, id);
		this.hibernateTemplate.delete(product);
	}
	
	public Product getProduct(int id) {
		
		Product product = this.hibernateTemplate.get(Product.class, id);
		return product;
		
	}
	
	

}
