package com.example.ss12.repository;
import com.example.ss12. model.User;

import java.util.List;
public interface IUserRepository {
    List<User> getAll();

    void create(User user);

    void update(User user);

    User findById(int id);

    void delete(int id);
    List<User>  search(String country);
    List<User> sort();

}
