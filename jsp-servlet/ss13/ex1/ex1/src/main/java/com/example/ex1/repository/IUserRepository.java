package com.example.ex1.repository;

import com.example.ex1.model.User;

import java.util.List;

public interface IUserRepository {

    List<User> getAll();

    void update(User user);

    User findById(int id);

    void delete(int id);

}

