package vn.edu.iuh.fit.backend.repositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.OrderDetail;

import java.util.List;

public class OrderDetailRepository {
    private EntityManager entityManager;
    private  EntityTransaction transaction;
    public OrderDetailRepository(){
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }
    public void addOrderDetail(OrderDetail orderDetail){
        transaction.begin();
        try{
            entityManager.persist(orderDetail);
            transaction.commit();
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
    }
    public boolean updateOrderDetail(OrderDetail orderDetail){
        transaction.begin();
        try{
            entityManager.merge(orderDetail);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }

    public List<OrderDetail> getAll(){
        transaction.begin();
        try {
            List<OrderDetail> orderDetails;
            orderDetails = entityManager.createQuery("From OrderDetail ", OrderDetail.class).getResultList();
            transaction.commit();
            return orderDetails;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
}
