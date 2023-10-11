package vn.edu.iuh.fit.backend.resources;

import com.fasterxml.jackson.core.JsonProcessingException;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Response;
import vn.edu.iuh.fit.backend.converters.Mapper;
import vn.edu.iuh.fit.backend.entities.Customer;
import vn.edu.iuh.fit.backend.entities.Employee;
import vn.edu.iuh.fit.backend.services.CustomerService;
import vn.edu.iuh.fit.backend.services.EmployeeService;

import java.util.List;

@Path("/customers")
public class CustomerResource {
    private CustomerService customerService;
    private Mapper mapper;

    public CustomerResource(){
        customerService = new CustomerService();
        mapper = new Mapper();
    }

    @GET
    @Produces("application/json")
    public Response getAll(){
        List<Customer> customers = customerService.getAll();
        try {
            mapper.getContext(Customer.class).writeValueAsString(customers);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        return Response.ok(customers).build();
    }
}
