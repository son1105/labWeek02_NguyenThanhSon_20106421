package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.ProductImage;
import vn.edu.iuh.fit.backend.repositoris.ProductImageRepository;

public class ProductImageService {
    private ProductImageRepository respository;

    public ProductImageService() {
        respository = new ProductImageRepository();
    }
    public ProductImage getProductImageById(long id){
        return respository.getProductImage(id);
    }
    public String getPathByProductId(long id){
        return respository.getPathProductById(id);
    }
}
