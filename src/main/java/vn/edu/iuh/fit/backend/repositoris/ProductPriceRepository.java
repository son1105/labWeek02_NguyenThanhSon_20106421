package vn.edu.iuh.fit.backend.repositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.ProductPrice;

import java.util.List;

public class ProductPriceRepository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public ProductPriceRepository() {
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }
    public double getPrice(long id){
        return entityManager.createQuery("SELECT p FROM ProductPrice p WHERE p.product.id =:id order By price_date_time desc LIMIT 1", ProductPrice.class)
                .setParameter("id", id).getSingleResult().getPrice();
    }

    public List<ProductPrice> getAll(){
        return entityManager.createQuery("From ProductPrice p order by p.price_date_time desc", ProductPrice.class)
                .getResultList();
    }

    public List<ProductPrice> getAllByProduct(long id){
        return entityManager.createQuery("From ProductPrice p where p.product.id =:id order by p.price_date_time", ProductPrice.class)
                .setParameter("id", id)
                .getResultList();
    }
}
