package vn.edu.iuh.fit.backend.services;

import vn.edu.iuh.fit.backend.entities.Customer;
import vn.edu.iuh.fit.backend.respositoris.CustomerRespository;

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
}
