package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Employee;
import vn.edu.iuh.fit.backend.repositoris.EmployeeRepository;

import java.util.List;

public class EmployeeService {
    private EmployeeRepository respository;

    public EmployeeService() {
        respository = new EmployeeRepository();
    }
    public boolean addEmployee(Employee employee){
        return respository.addEmployee(employee);
    }
    public boolean updateEmployee(Employee employee){
        return respository.updateEmployee(employee);
    }
    public List<Employee> getAll(){
        return respository.getAllEmployee();
    }
    public Employee getOne(long id){
        return respository.getEmployee(id);
    }
}
