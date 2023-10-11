package vn.edu.iuh.fit.backend.respositoris;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Customer;
import vn.edu.iuh.fit.backend.entities.Employee;

import java.util.List;

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
    public List<Employee> getAllEmployee(){
        transaction.begin();
        try {
            List<Employee> employees;
            employees = entityManager.createQuery("From Employee", Employee.class).getResultList();
            transaction.commit();
            return employees;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
    public Employee getEmployee(long id){
        transaction.begin();
        try {
            Employee employee = entityManager.createQuery("From Employee e where e.id=:id", Employee.class)
                    .setParameter("id", id)
                    .getSingleResult();
            transaction.commit();
            return employee;
        }catch (Exception e){
            e.printStackTrace();
            transaction.rollback();
        }
        return null;
    }
}
