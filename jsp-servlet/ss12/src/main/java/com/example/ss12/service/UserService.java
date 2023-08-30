package com.example.ss12.service;

import com.example.ss12.model.User;
import com.example.ss12.repository.IUserRepository;
import com.example.ss12.repository.UserRepository;

import java.util.List;

public class UserService implements IUserService {
    private IUserRepository repository = new UserRepository();

    @Override
    public List<User> getAll() {
        return repository.getAll();
    }

    @Override
    public void create(User user) {
        repository.create(user);
    }

    @Override
    public void update(User user) {
        repository.update(user);
    }

    @Override
    public User findById(int id) {
        return repository.findById(id);
    }

    @Override
    public void delete(int id) {
        repository.delete(id);
    }

    @Override
    public List<User> search(String country) {
        return repository.search(country);
    }

    @Override
    public List<User> sort() {
        return repository.sort();
    }
}
