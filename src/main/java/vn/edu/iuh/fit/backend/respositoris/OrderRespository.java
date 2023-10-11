package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Order;
import vn.edu.iuh.fit.backend.entities.Product;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class OrderRespository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public OrderRespository() {
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }
    public boolean addOrder(Order order){
        transaction.begin();
        try{
            entityManager.persist(order);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }
    public boolean updateOrder(Order order){
        transaction.begin();
        try{
            entityManager.merge(order);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }

    public List<Order> getAll(){
        transaction.begin();
        try {
            List<Order> orders;
            orders = entityManager.createQuery("From Order ", Order.class).getResultList();
            System.out.println(orders.get(1).getEmployee());
            transaction.commit();
            return orders;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
    public Order getOrder(long id){
        transaction.begin();
        try {
            Order order = entityManager.createQuery("From Order o where o.id=:id", Order.class)
                    .setParameter("id", id)
                    .getSingleResult();
            transaction.commit();
            return order;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }

    public List<Order> statsticOrderByDate(LocalDate fromDate, LocalDateTime toDate){
        transaction.begin();
        try {
            List<Order> orders;
            if(toDate == null){
                orders = entityManager.createQuery("from Order o where o.orderDate =:date", Order.class)
                        .setParameter("date", fromDate).getResultList();
            }else{
                orders = entityManager.createQuery("from Order o where o.orderDate between :fromDate and :toDate", Order.class)
                        .setParameter("fromDate", fromDate)
                        .setParameter("toDate", toDate)
                        .getResultList();
            }
            transaction.commit();
            return orders;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
    public List<Order> statsticOrderByEmployee(long empId) {
        transaction.begin();
        try {
            transaction.commit();
            return entityManager.createQuery("from Order o where o.employee.id =:id", Order.class)
                    .setParameter("id", empId).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
}
