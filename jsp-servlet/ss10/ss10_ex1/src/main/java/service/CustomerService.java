package service;

import model.Customer;
import repository.CustomerRepository;
import repository.ICustomerRepository;

import java.util.List;

public class CustomerService implements ICustomerService{
    private ICustomerRepository iCustomerRepository = new CustomerRepository();
    @Override
    public List<Customer> display() {
        return iCustomerRepository.display();
    }
}
