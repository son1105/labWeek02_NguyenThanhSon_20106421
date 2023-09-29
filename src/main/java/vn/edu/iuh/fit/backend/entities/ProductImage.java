package vn.edu.iuh.fit.backend.entities;

import jakarta.persistence.*;

import java.io.Serializable;

@Entity
public class ProductImage implements Serializable{
    @Id
    @Column(name = "image_id", columnDefinition = "BIGINT(20)")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long imgId;
    @Column(name = "path", length = 250)
    private String path;
    @Column(name = "alternative", length = 250)
    private String alternative;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    public ProductImage() {
    }

    public ProductImage(String path, String alternative, Product product) {
        this.path = path;
        this.alternative = alternative;
        this.product = product;
    }

    public long getImgId() {
        return imgId;
    }

    public void setImgId(long imgId) {
        this.imgId = imgId;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getAlternative() {
        return alternative;
    }

    public void setAlternative(String alternative) {
        this.alternative = alternative;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    @Override
    public String toString() {
        return "ProductImage{" +
                "imgId=" + imgId +
                ", path='" + path + '\'' +
                ", alternative='" + alternative + '\'' +
                ", product=" + product +
                '}';
    }
}
