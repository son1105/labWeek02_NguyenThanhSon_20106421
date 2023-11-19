package vn.edu.iuh.fit.backend.resources;

import com.fasterxml.jackson.core.JsonProcessingException;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Response;
import vn.edu.iuh.fit.backend.converters.Mapper;
import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.services.ProductService;

import java.util.List;

@Path("/products")
public class ProductResource {
    private ProductService productService;
    private Mapper mapper;

    public ProductResource(){
        productService = new ProductService();
        mapper = new Mapper();
    }

    @GET
    @Produces("application/json")
    public Response getAll(){
        List<Product> products = productService.getAll();
        System.out.println(products);
        try {
            mapper.getContext(Product.class).writeValueAsString(products);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        return Response.ok(products).build();

    }
}
