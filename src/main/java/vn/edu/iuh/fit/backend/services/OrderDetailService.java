package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.OrderDetail;
import vn.edu.iuh.fit.backend.repositoris.OrderDetailRepository;

public class OrderDetailService {
    private OrderDetailRepository respository;
    public OrderDetailService(){
        respository = new OrderDetailRepository();
    }
    public void addOrderDetail(OrderDetail orderDetail){
        respository.addOrderDetail(orderDetail);
    }
    public boolean updateOrderDetail(OrderDetail orderDetail){
        return respository.updateOrderDetail(orderDetail);
    }
}
