package vn.edu.iuh.fit.backend.resources;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Response;
import vn.edu.iuh.fit.backend.entities.ProductPrice;
import vn.edu.iuh.fit.backend.repositoris.ProductPriceRepository;

import java.util.List;

@Path("/product-price")
public class ProductPriceResource {
    private ProductPriceRepository productPriceRepository;

    public ProductPriceResource() {
        productPriceRepository = new ProductPriceRepository();
    }

    @GET
    @Produces("application/json")
    public Response getAll(){
        List<ProductPrice> lst = productPriceRepository.getAll();
        return Response.ok(lst).build();
    }

    @GET
    @Path("/product/{id}")
    @Produces("application/json")
    public Response getAllByProduct(@PathParam("id") long id){
        List<ProductPrice> lst = productPriceRepository.getAllByProduct(id);
        return Response.ok(lst).build();
    }
}
