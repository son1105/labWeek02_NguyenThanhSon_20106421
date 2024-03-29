package vn.edu.iuh.fit.backend.repositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Customer;

import java.util.List;

public class CustomerRepository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public CustomerRepository() {
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
    public List<Customer> getAllCustomer(){
        transaction.begin();
        try {
            List<Customer> customers;
            customers = entityManager.createQuery("From Customer", Customer.class).getResultList();
            transaction.commit();
            return customers;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
    public Customer getCustomer(long id){
        transaction.begin();
        try {
            Customer customer = entityManager.createQuery("From Customer c where c.id=:id", Customer.class)
                    .setParameter("id", id)
                    .getSingleResult();
            transaction.commit();
            return customer;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
}
