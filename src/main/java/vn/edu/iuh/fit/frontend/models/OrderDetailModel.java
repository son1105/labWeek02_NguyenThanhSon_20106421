package vn.edu.iuh.fit.frontend.models;

import vn.edu.iuh.fit.backend.entities.OrderDetail;
import vn.edu.iuh.fit.backend.services.OrderDetailService;

public class OrderDetailModel {
    private OrderDetailService service;
    public OrderDetailModel(){
        service = new OrderDetailService();
    }
    public void addOrderDetail(OrderDetail orderDetail){
        service.addOrderDetail(orderDetail);
    }
}
