package vn.edu.iuh.fit.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Id;

public class ProductImage {
    @Id
    @Column(name = "image_id")
    private int imgId;
    @Column(name = "path")
    private String path;
    @Column(name = "alternative")
    private String alternative;
}
