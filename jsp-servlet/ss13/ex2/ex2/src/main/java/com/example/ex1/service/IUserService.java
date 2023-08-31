package com.example.ex1.service;

import com.example.ex1.model.User;

import java.util.List;

public interface IUserService {
    List<User> getAll();

    void update(User user);

    User findById(int id);

    void delete(int id);
    void addTransaction(User user);

}
