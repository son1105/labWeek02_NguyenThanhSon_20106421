package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Employee;

public class EmployeeRespository {
    private EntityManager entityManager;
    private EntityTransaction transaction;

    public EmployeeRespository() {
        entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
        transaction = entityManager.getTransaction();
    }
    public boolean addEmployee(Employee employee){
        transaction.begin();
        try{
            entityManager.persist(employee);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }
    public boolean updateEmployee(Employee employee){
        transaction.begin();
        try{
            entityManager.merge(employee);
            transaction.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return false;
    }
}
