package vn.edu.iuh.fit.frontend.models;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.iuh.fit.backend.entities.Employee;
import vn.edu.iuh.fit.backend.enums.EmployeeStatus;
import vn.edu.iuh.fit.backend.services.EmployeeService;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

public class EmployeeModel {
    private EmployeeService service;

    public EmployeeModel(){
        service = new EmployeeService();
    }
    public boolean addEmployee(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fullName = req.getParameter("full_name");
        String dateOfBirth = req.getParameter("date_of_birth");
        System.out.println(dateOfBirth);
        String[] dateSplit = dateOfBirth.split("-");
        String address = req.getParameter("address");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        return service.addEmployee(new Employee(fullName, LocalDate.of(Integer.parseInt(dateSplit[0]), Integer.parseInt(dateSplit[1]), Integer.parseInt(dateSplit[2])), email, phone, address, EmployeeStatus.ACTIVE));
    }
    public boolean updateEmployee(Employee employee){
        return service.updateEmployee(employee);
    }
    public List<Employee> getAll(){
        return service.getAll();
    }
    public Employee getOne(long id){
        return service.getOne(id);
    }
}
