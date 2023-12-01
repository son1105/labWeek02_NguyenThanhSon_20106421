package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Order;
import vn.edu.iuh.fit.backend.repositoris.OrderRepository;

import java.time.LocalDate;
import java.util.List;

public class OrderService {
    private OrderRepository respository;
    public OrderService(){
        respository = new OrderRepository();
    }
    public boolean addOrder(Order order){
        return respository.addOrder(order);
    }
    public boolean updateOrder(Order order){
        return respository.updateOrder(order);
    }
    public List<Order> getAll(){
        return respository.getAll();
    }

    public List<Order> getOrderByEmployeeAndOrderDate(long employeeId, LocalDate date){
        return respository.getOrderByEmployeeAndOrderDate(employeeId, date);
    }

    public List<Order> getOrderByEmployeeAndOrderDateBetween(long employeeId, LocalDate fromDate, LocalDate toDate){
        return respository.getOrderByEmployeeAndOrderDateBetween(employeeId, fromDate, toDate);
    }
    public Order getOne(long id){
        return respository.getOrder(id);
    }
    public Order getNewOrder(){
        return respository.getNewOrder();
    }
}
