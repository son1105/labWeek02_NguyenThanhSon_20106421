package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Product;

import java.util.List;

public class ProductRespository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public ProductRespository() {
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }
    public boolean addProduct(Product product){
        transaction.begin();
        try{
            entityManager.persist(product);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }
    public boolean updateProduct(Product product){
        transaction.begin();
        try{
            entityManager.merge(product);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }
    public List<Product> getAllProduct(){
        transaction.begin();
        try {
            List<Product> products;
            products = entityManager.createQuery("From Product p where p.status=1", Product.class).getResultList();
            transaction.commit();
            return products;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
}
