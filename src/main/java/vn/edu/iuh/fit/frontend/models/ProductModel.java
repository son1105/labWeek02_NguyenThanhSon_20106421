package vn.edu.iuh.fit.frontend.models;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.enums.ProductStatus;
import vn.edu.iuh.fit.backend.services.ProductService;

import java.io.IOException;
import java.util.List;

public class ProductModel {
    private ProductService service;

    public ProductModel(){
        service = new ProductService();
    }
    public boolean addProduct(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("product_name");
        String unit = req.getParameter("unit");
        String manufactureName = req.getParameter("manufacture_name");
        String description = req.getParameter("description");
        return service.addProduct(new Product(name, description, unit, manufactureName, ProductStatus.ACTIVE));
    }
    public boolean updateProduct(Product product){
        return service.updateProduct(product);
    }
    public List<Product> getAll(){
        return service.getAllProduct();
    }
}
