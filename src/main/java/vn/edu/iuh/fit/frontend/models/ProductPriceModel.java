package vn.edu.iuh.fit.frontend.models;

import vn.edu.iuh.fit.backend.services.ProductPriceService;

public class ProductPriceModel {
    private ProductPriceService service;

    public ProductPriceModel() {
        service = new ProductPriceService();
    }
    public double getPriceByProductId(long id){
        return service.getPriceByProductId(id);
    }
}
