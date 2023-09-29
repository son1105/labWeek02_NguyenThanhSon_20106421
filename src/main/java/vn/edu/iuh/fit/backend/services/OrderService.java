package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Order;
import vn.edu.iuh.fit.backend.respositoris.OrderRespository;

public class OrderService {
    private OrderRespository respository;
    public OrderService(){
        respository = new OrderRespository();
    }
    public boolean addOrder(Order order){
        return respository.addOrder(order);
    }
    public boolean updateOrder(Order order){
        return respository.updateOrder(order);
    }
}