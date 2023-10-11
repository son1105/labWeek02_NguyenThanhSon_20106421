package vn.edu.iuh.fit.backend.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import vn.edu.iuh.fit.backend.enums.ProductStatus;

import java.io.Serializable;
import java.util.List;

@Entity
@Table(name = "product")
public class Product implements Serializable {
    @Id
    @Column(name = "product_id", columnDefinition = "BIGINT(20)")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(name = "name", length = 150)
    private String name;
    @Column(name = "description", length = 250)
    private String description;
    @Column(name = "unit", length = 25)
    private String unit;
    @Column(name = "manufacturerName", length = 100)
    private String manufacturerName;
    @Column(name = "status", columnDefinition = "INT(11)")
    private ProductStatus status;
    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    @JsonManagedReference
    List<OrderDetail> orderDetailList;
    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    @JsonManagedReference
    List<ProductImage> productImageList;
    @OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
    @JsonManagedReference
    List<ProductPrice> productPriceList;

    public Product() {
    }

    public Product(long id, String name, String description, String unit, String manufacturerName, ProductStatus status, List<OrderDetail> orderDetailList, List<ProductImage> productImageList, List<ProductPrice> productPriceList) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.unit = unit;
        this.manufacturerName = manufacturerName;
        this.status = status;
        this.orderDetailList = orderDetailList;
        this.productImageList = productImageList;
        this.productPriceList = productPriceList;
    }

    public Product(String name, String description, String unit, String manufacturerName, ProductStatus status, List<OrderDetail> orderDetailList, List<ProductImage> productImageList, List<ProductPrice> productPriceList) {
        this.name = name;
        this.description = description;
        this.unit = unit;
        this.manufacturerName = manufacturerName;
        this.status = status;
        this.orderDetailList = orderDetailList;
        this.productImageList = productImageList;
        this.productPriceList = productPriceList;
    }

    public Product(String name, String description, String unit, String manufacturerName, ProductStatus status) {
        this.name = name;
        this.description = description;
        this.unit = unit;
        this.manufacturerName = manufacturerName;
        this.status = status;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getManufacturerName() {
        return manufacturerName;
    }

    public void setManufacturerName(String manufacturerName) {
        this.manufacturerName = manufacturerName;
    }

    public ProductStatus getStatus() {
        return status;
    }

    public void setStatus(ProductStatus status) {
        this.status = status;
    }

    public List<OrderDetail> getOrderList() {
        return orderDetailList;
    }

    public void setOrderList(List<OrderDetail> orderList) {
        this.orderDetailList = orderList;
    }

    public List<ProductImage> getProductImageList() {
        return productImageList;
    }

    public void setProductImageList(List<ProductImage> productImageList) {
        this.productImageList = productImageList;
    }

    public List<ProductPrice> getProductPriceList() {
        return productPriceList;
    }

    public void setProductPriceList(List<ProductPrice> productPriceList) {
        this.productPriceList = productPriceList;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", unit='" + unit + '\'' +
                ", manufacturerName='" + manufacturerName + '\'' +
                ", status=" + status +
//                ", orderList=" + orderDetailList +
//                ", productImageList=" + productImageList +
//                ", productPriceList=" + productPriceList +
                '}';
    }

}
