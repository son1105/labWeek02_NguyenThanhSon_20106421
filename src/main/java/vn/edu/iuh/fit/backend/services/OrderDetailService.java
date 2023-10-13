package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Order;
import vn.edu.iuh.fit.backend.entities.OrderDetail;
import vn.edu.iuh.fit.backend.respositoris.OrderDetailRespository;

public class OrderDetailService {
    private OrderDetailRespository respository;
    public OrderDetailService(){
        respository = new OrderDetailRespository();
    }
    public void addOrderDetail(OrderDetail orderDetail){
        respository.addOrderDetail(orderDetail);
    }
    public boolean updateOrderDetail(OrderDetail orderDetail){
        return respository.updateOrderDetail(orderDetail);
    }
}
