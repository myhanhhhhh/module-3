package repository;

import model.Customer;

import java.util.ArrayList;
import java.util.List;

public class CustomerRepository implements ICustomerRepository{
    private static List<Customer> list;
    static {
        list = new ArrayList<>();
        list.add(new Customer("Liên", "20-09-2000", "Đà Nẵng","https://image2.tin247.news/pictures/2023/02/21/ayw1676942241.png"));
        list.add(new Customer("Hạnh", "06-03-2001", "Đà Nẵng", "https://tapchilamdep.com/wp-content/uploads/2019/10/Jennie-BLACKPINK.jpg"));
        list.add(new Customer("Minh", "10-11-2000", "Đà Nẵng", "https://tapchilamdep.com/wp-content/uploads/2019/10/Jennie-BLACKPINK.jpg"));
        list.add(new Customer("Hậu", "11-01-2002", "Đà Nẵng","https://tapchilamdep.com/wp-content/uploads/2019/10/Jennie-BLACKPINK.jpg"));
    }

    @Override
    public List<Customer> display() {
        return list;
    }
}
