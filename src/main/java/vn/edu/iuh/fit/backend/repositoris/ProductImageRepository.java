package vn.edu.iuh.fit.backend.repositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.ProductImage;

public class ProductImageRepository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public ProductImageRepository() {
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }
    public ProductImage getProductImage(long id) {
        transaction.begin();
        try {
            ProductImage productImage = entityManager.createQuery("From ProductImage pi where pi.id=:id", ProductImage.class)
                    .setParameter("id", id)
                    .getSingleResult();
            transaction.commit();
            return productImage;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
    public String getPathProductById(long id){
        transaction.begin();
        try {
            ProductImage p = entityManager.createQuery("select p from ProductImage p where p.product.id=:id", ProductImage.class)
                    .setParameter("id", id).getSingleResult();
            String path = p.getPath();
            transaction.commit();
            return path;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
}
