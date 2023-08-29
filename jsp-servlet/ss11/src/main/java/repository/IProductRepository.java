package repository;

import model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> display();

    void add(Product product);
    Product findById(int id);
}
