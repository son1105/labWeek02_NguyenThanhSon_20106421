package vn.edu.iuh.fit.frontend.models;

import vn.edu.iuh.fit.backend.services.ProductImageService;

public class ProductImageModel {
    private ProductImageService service;

    public ProductImageModel() {
        service = new ProductImageService();
    }
    public String getPathByProductId(long id){
        return service.getPathByProductId(id);
    }
}
