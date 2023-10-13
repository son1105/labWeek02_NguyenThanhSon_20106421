package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Customer;
import vn.edu.iuh.fit.backend.entities.Employee;
import vn.edu.iuh.fit.backend.respositoris.CustomerRespository;

import java.util.List;

public class CustomerService {
    private CustomerRespository respository;

    public CustomerService() {
        respository = new CustomerRespository();
    }
    public boolean addCustomer(Customer customer){
        return respository.addCustomer(customer);
    }
    public boolean updateCustomer(Customer customer){
        return respository.updateCustomer(customer);
    }
    public List<Customer> getAll(){
        return respository.getAllCustomer();
    }
    public Customer getOne(long id){
        return respository.getCustomer(id);
    }
}
