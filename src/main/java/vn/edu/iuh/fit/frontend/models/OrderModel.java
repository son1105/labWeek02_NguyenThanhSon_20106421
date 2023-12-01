package vn.edu.iuh.fit.frontend.models;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.iuh.fit.backend.entities.Order;
import vn.edu.iuh.fit.backend.services.OrderService;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

public class OrderModel {
    private OrderService service;

    public OrderModel(){
        service = new OrderService();
    }
    public boolean addOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        return service.addOrder(new Order(LocalDateTime.now(), new CustomerModel().getOne(1), new EmployeeModel().getOne(1)));
    }
    public boolean updateOrder(Order order){
        return service.updateOrder(order);
    }
    public List<Order> getAll(){
        return service.getAll();
    }
    public Order getOne(long id){
        return service.getOne(id);
    }
    public Order getNewOrder(){
        return service.getNewOrder();
    }
}
