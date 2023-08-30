package com.example.ss11.repository;

import com.example.ss11.model.Product;

import java.util.List;

public interface IProductRepository {
    List<Product> getAll();

    void create(Product product);

    void update( Product product);

    Product findById(int id);

    void delete(int id);

   List<Product>  search(String name);

}

