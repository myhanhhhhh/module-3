package com.example.ex1.service;

import com.example.ex1.model.User;
import com.example.ex1.repository.IUserRepository;
import com.example.ex1.repository.UserRepository;

import java.util.List;

public class UserService implements IUserService {

    private IUserRepository repository = new UserRepository();

    @Override
    public List<User> getAll() {
        return repository.getAll();
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
    public void addTransaction(User user) {
        repository.addUTransaction(user);
    }
}
