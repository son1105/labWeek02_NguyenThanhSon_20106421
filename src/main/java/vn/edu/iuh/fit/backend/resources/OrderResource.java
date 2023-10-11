package vn.edu.iuh.fit.backend.resources;

import com.fasterxml.jackson.core.JsonProcessingException;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Response;
import vn.edu.iuh.fit.backend.converters.Mapper;
import vn.edu.iuh.fit.backend.entities.Employee;
import vn.edu.iuh.fit.backend.entities.Order;
import vn.edu.iuh.fit.backend.services.EmployeeService;
import vn.edu.iuh.fit.backend.services.OrderService;

import java.util.List;

@Path("/orders")
public class OrderResource {
    private OrderService orderService;
    private Mapper mapper;

    public OrderResource(){
        orderService = new OrderService();
        mapper = new Mapper();
    }

    @GET
    @Produces("application/json")
    public Response getAll(){
        List<Order> orders = orderService.getAll();
        try {
            mapper.getContext(Order.class).writeValueAsString(orders);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        return Response.ok(orders).build();
    }
}
