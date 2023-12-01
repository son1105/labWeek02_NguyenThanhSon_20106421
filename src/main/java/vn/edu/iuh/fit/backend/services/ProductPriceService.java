package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.repositoris.ProductPriceRepository;

public class ProductPriceService {
    private ProductPriceRepository respository;

    public ProductPriceService() {
        respository = new ProductPriceRepository();
    }
    public double getPriceByProductId(long id){
        return respository.getPrice(id);
    }
}
