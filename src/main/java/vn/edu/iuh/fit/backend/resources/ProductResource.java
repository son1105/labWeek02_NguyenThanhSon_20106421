package vn.edu.iuh.fit.backend.resources;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Response;
import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.services.ProductService;

import java.util.List;

@Path("/products")
public class ProductResource {
    private ProductService productService;

    public ProductResource(){
        productService = new ProductService();
    }

    @GET
    @Produces("application/json")
    public Response getAllProduct(){
        List<Product> products = productService.getAllProduct();
        return Response.ok(products).build();
    }
}
