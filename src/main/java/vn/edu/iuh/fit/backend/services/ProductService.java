package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.respositoris.ProductRespository;

import java.util.List;

public class ProductService {
    private ProductRespository respository;

    public ProductService() {
        respository = new ProductRespository();
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
}
