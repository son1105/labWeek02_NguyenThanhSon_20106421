package vn.edu.iuh.fit.backend.resources;

import com.fasterxml.jackson.core.JsonProcessingException;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Response;
import vn.edu.iuh.fit.backend.converters.Mapper;
import vn.edu.iuh.fit.backend.entities.Employee;
import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.services.EmployeeService;
import vn.edu.iuh.fit.backend.services.ProductService;

import java.util.List;

@Path("/employees")
public class EmployeesResource {
    private EmployeeService employeeService;
    private Mapper mapper;

    public EmployeesResource(){
        employeeService = new EmployeeService();
        mapper = new Mapper();
    }

    @GET
    @Produces("application/json")
    public Response getAll(){
        List<Employee> employees = employeeService.getAll();
        System.out.println(employees);
        try {
            mapper.getContext(Employee.class).writeValueAsString(employees);
        } catch (JsonProcessingException e) {
            throw new RuntimeException(e);
        }
        return Response.ok(employees).build();
    }
}
