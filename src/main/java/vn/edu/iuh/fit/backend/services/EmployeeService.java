package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Employee;
import vn.edu.iuh.fit.backend.respositoris.EmployeeRespository;

import java.util.List;

public class EmployeeService {
    private EmployeeRespository respository;

    public EmployeeService() {
        respository = new EmployeeRespository();
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
}
