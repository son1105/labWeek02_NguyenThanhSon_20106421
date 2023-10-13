package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.entities.ProductImage;
import vn.edu.iuh.fit.backend.entities.ProductPrice;

import java.util.List;
import java.util.Optional;

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
    public List<Product> getAll(){
        transaction.begin();
        try {
            List<Product> products;
            products = entityManager.createQuery("From Product", Product.class).getResultList();
            transaction.commit();
            return products;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
    public Product getOneById(long id){
        transaction.begin();
        try {
            Product product = entityManager.createQuery("select p from Product p where p.id=:id", Product.class)
                    .setParameter("id", id).getSingleResult();
            transaction.commit();
            return product;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }

    public long getIdByName(String name){
        return entityManager.createQuery("select p from Product p where p.name=:name", Product.class)
                .setParameter("name", name).getSingleResult().getId();
    }
}
