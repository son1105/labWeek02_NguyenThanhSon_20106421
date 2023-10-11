package vn.edu.iuh.fit.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "orders")
public class Order implements Serializable {
    @Id
    @Column( name = "order_id",columnDefinition = "bigint(20)")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long order_id;

    @Column(columnDefinition = "datetime(6)")
    private LocalDate orderDate;
    @ManyToOne
    @JoinColumn(name = "cus_id")
    @JsonBackReference
    private Customer customer;
    @ManyToOne
    @JoinColumn(name = "employee_id", nullable = false)
    @JsonBackReference
    private Employee employee;

    @OneToMany(mappedBy = "order",cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<OrderDetail> orderDetailList = new ArrayList<OrderDetail>();

    public Order(LocalDate orderDate, Customer customer, Employee employee, List<OrderDetail> orderDetailList) {
        this.orderDate = orderDate;
        this.customer = customer;
        this.employee = employee;
        this.orderDetailList = orderDetailList;
    }

    public Order(long order_id, LocalDate orderDate, Customer customer, Employee employee, List<OrderDetail> orderDetailList) {
        this.order_id = order_id;
        this.orderDate = orderDate;
        this.customer = customer;
        this.employee = employee;
        this.orderDetailList = orderDetailList;
    }

    public Order() {
    }

    public long getOrder_id() {
        return order_id;
    }

    public void setOrder_id(long order_id) {
        this.order_id = order_id;
    }

    public LocalDate getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(LocalDate orderDate) {
        this.orderDate = orderDate;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public List<OrderDetail> getOrderDetailList() {
        return orderDetailList;
    }

    public void setOrderDetailList(List<OrderDetail> orderDetailList) {
        this.orderDetailList = orderDetailList;
    }

    @Override
    public String toString() {
        return "Order{" +
                "order_id=" + order_id +
                ", orderDate=" + orderDate +
//                ", customer=" + customer +
//                ", employee=" + employee +
//                ", orderDetailList=" + orderDetailList +
                '}';
    }
}