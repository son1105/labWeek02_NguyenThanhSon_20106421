package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.ProductImage;

public class ProductImageRespository{
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public ProductImageRespository() {
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
}
