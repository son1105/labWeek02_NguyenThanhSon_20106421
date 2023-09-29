package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Customer;

public class CustomerRespository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public CustomerRespository() {
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }
    public boolean addCustomer(Customer customer){
        transaction.begin();
        try{
            entityManager.persist(customer);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }
    public boolean updateCustomer(Customer customer){
        transaction.begin();
        try{
            entityManager.merge(customer);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }
}
