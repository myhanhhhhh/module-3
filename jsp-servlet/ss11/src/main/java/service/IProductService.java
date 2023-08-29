package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> getAll();

    void create(Product product);

    void update(int id, Product product);

    Product findById(int id);

    void delete(int id);
    Product search(String name);
}
