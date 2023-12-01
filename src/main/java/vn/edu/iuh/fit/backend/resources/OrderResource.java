package vn.edu.iuh.fit.backend.resources;

import com.fasterxml.jackson.core.JsonProcessingException;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.Response;
import vn.edu.iuh.fit.backend.converters.Mapper;
import vn.edu.iuh.fit.backend.entities.Employee;
import vn.edu.iuh.fit.backend.entities.Order;
import vn.edu.iuh.fit.backend.services.EmployeeService;
import vn.edu.iuh.fit.backend.services.OrderService;

import java.time.DateTimeException;
import java.time.LocalDate;
import java.util.List;

@Path("/orders")
public class OrderResource {
    private OrderService orderService;
    private Mapper mapper;

    public OrderResource() {
        orderService = new OrderService();
        mapper = new Mapper();
    }

    @GET
    @Produces("application/json")
    public Response getAll() {
        List<Order> orders = orderService.getAll();
        return Response.ok(orders).build();
    }

    @GET
    @Path("/filter")
    @Produces("application/json")
    public Response getAllByDate(@QueryParam("orderDate") String date,
                                 @QueryParam("fromDate") String fromDate,
                                 @QueryParam("toDate") String toDate) {
        try {
            List<Order> orders;
            if (date == null) {
                orders = orderService.getOrderByEmployeeAndOrderDateBetween(-1, LocalDate.parse(fromDate), LocalDate.parse(toDate));
            } else {
                LocalDate localDate = LocalDate.parse(date);
                orders = orderService.getOrderByEmployeeAndOrderDate(-1, localDate);
            }
            mapper.getContext(Order.class).writeValueAsString(orders);
            return Response.ok(orders).build();
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }

    @GET
    @Path("/employee/{id}")
    @Produces("application/json")
    public Response getAllByEmployeeAndDate(@PathParam("id") long id,
                                            @QueryParam("orderDate") String date,
                                            @QueryParam("fromDate") String fromDate,
                                            @QueryParam("toDate") String toDate) {
        try {
            List<Order> orders;
            if (date == null) {
                orders = orderService.getOrderByEmployeeAndOrderDateBetween(id, LocalDate.parse(fromDate), LocalDate.parse(toDate));
            } else {
                LocalDate localDate = LocalDate.parse(date);
                orders = orderService.getOrderByEmployeeAndOrderDate(id, localDate);
            }
            mapper.getContext(Order.class).writeValueAsString(orders);
            return Response.ok(orders).build();
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
    }
}
