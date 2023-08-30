package com.example.ss11.service;

import com.example.ss11.model.Product;
import com.example.ss11.repository.IProductRepository;
import com.example.ss11.repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
    private IProductRepository repository = new ProductRepository();

    @Override
    public List<Product> getAll() {
        return repository.getAll();
    }

    @Override
    public void create(Product product) {
        repository.create(product);
    }

    @Override
    public void update( Product product) {
        repository.update( product);
    }

    @Override
    public Product findById(int id) {
        return repository.findById(id);
    }

    @Override
    public void delete(int id) {
        repository.delete(id);
    }

    @Override
    public List<Product>  search(String name) {
        return repository.search(name);
    }
}
