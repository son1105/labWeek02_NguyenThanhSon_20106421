package vn.edu.iuh.fit.entities;

import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.List;

public class Order {
    @Id
    @Column(name = "order_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @Column(name = "order_date")
    private LocalDate orderDate;
    @OneToMany
    private List<OrderDetail> orderDetails;
}
