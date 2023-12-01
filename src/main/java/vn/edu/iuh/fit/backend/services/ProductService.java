package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.repositoris.ProductRepository;

import java.util.List;

public class ProductService {
    private ProductRepository respository;

    public ProductService() {
        respository = new ProductRepository();
    }
    public boolean addProduct(Product product){
        return respository.addProduct(product);
    }
    public boolean updateProduct(Product product){
        return respository.updateProduct(product);
    }
    public List<Product> getAll(){
        return respository.getAll();
    }
    public Product getOneById(long id){
        return respository.getOneById(id);
    }
    public long getIdByName(String name){
        return respository.getIdByName(name);
    }
}
