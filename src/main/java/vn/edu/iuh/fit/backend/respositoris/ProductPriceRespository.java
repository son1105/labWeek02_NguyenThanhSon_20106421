package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.ProductPrice;

public class ProductPriceRespository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public ProductPriceRespository() {
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }
    public double getPrice(long id){
        return entityManager.createQuery("SELECT p FROM ProductPrice p WHERE p.product.id =:id order By price_date_time desc LIMIT 1", ProductPrice.class)
                .setParameter("id", id).getSingleResult().getPrice();
    }
}
