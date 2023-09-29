package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Order;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

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
    public List<Order> statsticOrderByEmployee(long empId){
        transaction.begin();
        try{
            transaction.commit();
            return entityManager.createQuery("from Order o where o.employee.id =:id", Order.class)
                    .setParameter("id", empId).getResultList();
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
}
