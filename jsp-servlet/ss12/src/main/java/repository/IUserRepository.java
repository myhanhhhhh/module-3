package repository;

import model.User;

import java.util.List;

public interface IUserRepository {
    List<User> getAll();

    void create(User user);

    void update(User user);

    User findById(int id);

    void delete(int id);

}
