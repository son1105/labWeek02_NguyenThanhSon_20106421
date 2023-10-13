package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.ProductImage;
import vn.edu.iuh.fit.backend.respositoris.ProductImageRespository;

public class ProductImageService {
    private ProductImageRespository respository;

    public ProductImageService() {
        respository = new ProductImageRespository();
    }
    public ProductImage getProductImageById(long id){
        return respository.getProductImage(id);
    }
    public String getPathByProductId(long id){
        return respository.getPathProductById(id);
    }
}
