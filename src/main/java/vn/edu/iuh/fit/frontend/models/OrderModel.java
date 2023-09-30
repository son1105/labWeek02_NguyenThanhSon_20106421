package vn.edu.iuh.fit.frontend.models;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.iuh.fit.backend.entities.Order;
import vn.edu.iuh.fit.backend.services.OrderService;

import java.io.IOException;
import java.util.List;

public class OrderModel {
    private OrderService service;

    public OrderModel(){
        service = new OrderService();
    }
    public boolean addOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullName = req.getParameter("full_name");
        String dateOfBirth = req.getParameter("date_of_birth");
        String[] dateSplit = dateOfBirth.split("/");
        String address = req.getParameter("address");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String status = req.getParameter("status");
//        return service.addOrder(new Order(fullName, LocalDate.of(Integer.parseInt(dateSplit[2]), Integer.parseInt(dateSplit[1]), Integer.parseInt(dateSplit[0])), email, phone, address, EmployeeStatus.ACTIVE));
        return false;
    }
    public boolean updateOrder(Order order){
        return service.updateOrder(order);
    }
    public List<Order> getAll(){
        return service.getAll();
    }
}
