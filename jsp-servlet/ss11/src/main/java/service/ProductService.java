package service;

import model.Product;
import repository.IProductRepository;
import repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
    private IProductRepository repository = new ProductRepository();

    @Override
    public List<Product> display() {
        return repository.display();
    }

    @Override
    public void add(Product product) {
        repository.add(product);
    }

    @Override
    public Product findById(int id) {
        return repository.findById(id);
    }
}
