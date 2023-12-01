package vn.edu.iuh.fit.backend.repositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Order;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

public class OrderRepository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public OrderRepository() {
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }

    public boolean addOrder(Order order) {
        transaction.begin();
        try {
            entityManager.persist(order);
            transaction.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }

    public boolean updateOrder(Order order) {
        transaction.begin();
        try {
            entityManager.merge(order);
            transaction.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }

    public List<Order> getAll() {
        transaction.begin();
        try {
            List<Order> orders;
            orders = entityManager.createQuery("From Order ", Order.class).getResultList();
            System.out.println(orders.get(1).getEmployee());
            transaction.commit();
            return orders;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }

    public Order getOrder(long id) {
        transaction.begin();
        try {
            Order order = entityManager.createQuery("From Order o where o.id=:id", Order.class)
                    .setParameter("id", id)
                    .getSingleResult();
            transaction.commit();
            return order;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }

    public Order getNewOrder() {
        transaction.begin();
        try {
            Order order = entityManager.createQuery("From Order o Order By o.id desc LIMIT 1", Order.class)
                    .getSingleResult();
            transaction.commit();
            return order;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }

    public List<Order> getOrderByEmployeeAndOrderDate(long employeeId, LocalDate date) {
        transaction.begin();
        try {
            List<Order> orders;
            if(employeeId == -1){
                orders = entityManager.createQuery("from Order o where DATE(o.orderDate) =:date", Order.class)
                        .setParameter("date", date).getResultList();
            } else{
                orders = entityManager.createQuery("from Order o where o.employee.id =:employeeId and DATE(o.orderDate) =:date", Order.class)
                        .setParameter("employeeId", employeeId)
                        .setParameter("date", date).getResultList();
            }
            transaction.commit();
            return orders;
        } catch (Exception e) {
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }

    public List<Order> getOrderByEmployeeAndOrderDateBetween(long employeeId, LocalDate fromDate, LocalDate toDate) {
        transaction.begin();
        try {
            List<Order> orders;
            if(employeeId == -1){
                orders = entityManager.createQuery("from Order o where DATE(o.orderDate) between :fromDate and :toDate", Order.class)
                        .setParameter("fromDate", fromDate)
                        .setParameter("toDate", toDate).getResultList();
            }else{
                orders = entityManager.createQuery("from Order o where o.employee.id =:employeeId and DATE(o.orderDate) between :fromDate and :toDate", Order.class)
                        .setParameter("employeeId", employeeId)
                        .setParameter("fromDate", fromDate)
                        .setParameter("toDate", toDate).getResultList();
            }
            transaction.commit();
            return orders;
        } catch (Exception e) {
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
