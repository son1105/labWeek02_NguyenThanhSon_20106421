package vn.edu.iuh.fit.frontend.models;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.iuh.fit.backend.entities.Customer;
import vn.edu.iuh.fit.backend.services.CustomerService;

import java.io.IOException;
import java.util.List;

public class CustomerModel {
    private CustomerService service;

    public CustomerModel(){
        service = new CustomerService();
    }
    public boolean addCustomer(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String address = req.getParameter("address");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        return service.addCustomer(new Customer(name, email, phone, address));
    }
    public boolean updateCustomer(Customer customer){
        return service.updateCustomer(customer);
    }
    public List<Customer> getAll(){
        return service.getAll();
    }
}
