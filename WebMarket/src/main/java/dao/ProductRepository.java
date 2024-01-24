package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4-7inch, 1334X750 Retina HD dispaly, 8megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
		phone.setFilename("P1234.png");
		
		Product laptop = new Product("P1235", "LG PC 그램", 1500000);
		laptop.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core Processor");
		laptop.setCategory("Laptop");
		laptop.setManufacturer("LG");
		laptop.setUnitsInStock(1000);
		laptop.setCondition("Refurbished");
		laptop.setFilename("P1235.png");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core Processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
		tablet.setFilename("P1236.png");
		
		listOfProducts.add(phone);
		listOfProducts.add(laptop);
		listOfProducts.add(tablet);
		
	}
	
	public ArrayList<Product> getLop(){
		return listOfProducts;
	}
	
	public Product getProductById(String productid) {
		Product productById = null;
		for(int i = 0; i< listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null && product.getProductId().equals(productid)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	private static ProductRepository instance = new ProductRepository();
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
