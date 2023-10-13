package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.respositoris.ProductRespository;

import java.util.List;
import java.util.Optional;

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
    public Product getOneById(long id){
        return respository.getOneById(id);
    }
    public long getIdByName(String name){
        return respository.getIdByName(name);
    }
}
