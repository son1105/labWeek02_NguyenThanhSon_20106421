package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.respositoris.ProductPriceRespository;

public class ProductPriceService {
    private ProductPriceRespository respository;

    public ProductPriceService() {
        respository = new ProductPriceRespository();
    }
    public double getPriceByProductId(long id){
        return respository.getPrice(id);
    }
}
