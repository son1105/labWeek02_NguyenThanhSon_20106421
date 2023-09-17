package vn.edu.iuh.fit.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Id;

import java.util.List;

public class OrderDetail {
    @Id
    private Order orderId;
    private List<Product> product;
    @Column(name = "quantity")
    private int quantity;
    @Column(name = "price")
    private double price;
    @Column(name = "note")
    private String note;
}
