package vn.edu.iuh.fit.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;

import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
public class ProductPrice implements Serializable{
    @Id
    @Column(name = "price_date_time", length = 6)
    private LocalDateTime price_date_time;
    @Id
    @ManyToOne
    @JoinColumn(name = "product_id")
    @JsonBackReference
    private Product product;
    @Column(name = "price")
    private double price;
    @Column(name = "note")
    private String note;

    public ProductPrice() {
    }

    public ProductPrice(LocalDateTime price_date_time, Product product, double price, String note) {
        this.price_date_time = price_date_time;
        this.product = product;
        this.price = price;
        this.note = note;
    }

    public LocalDateTime getPrice_date_time() {
        return price_date_time;
    }

    public void setPrice_date_time(LocalDateTime price_date_time) {
        this.price_date_time = price_date_time;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "ProductPrice{" +
                "price_date_time=" + price_date_time +
                ", product=" + product +
                ", price=" + price +
                ", note='" + note + '\'' +
                '}';
    }
}
