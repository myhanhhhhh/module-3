package repository;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface IProductRepository {
    List<Product> getAll();

    void create(Product product);

    void update(int id, Product product);

    Product findById(int id);

    void delete(int id);

    Product search(String name);

}

