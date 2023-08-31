package com.example.ex1.repository;

import com.example.ex1.model.User;

import java.sql.*;

import java.util.List;
import java.util.ArrayList;


public class UserRepository implements IUserRepository {
    private static final String SELECT = "call get_info_user()";
    private static final String UPDATE = "call edit_info_user(?,?,?,?)";
    private static final String FIND_BY_ID = "call find_by_id(?)";
    private static final String DELETE = "call delete_user(?)";
    private static final String ADD_TRANSACTION = "insert into users(name,email, country) values (?,?,?)";

    @Override
    public List<User> getAll() {
        Connection connection = BaseRepository.getConnection();
        List<User> list = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(SELECT);
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                list.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    @Override
    public void update(User user) {
        Connection connection = BaseRepository.getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall(UPDATE);
            callableStatement.setInt(1, user.getId());
            callableStatement.setString(2, user.getName());
            callableStatement.setString(3, user.getEmail());
            callableStatement.setString(4, user.getCountry());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public User findById(int id) {
        Connection connection = BaseRepository.getConnection();
        User user = null;
        try {
            CallableStatement callableStatement = connection.prepareCall(FIND_BY_ID);
            callableStatement.setInt(1, id);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return user;
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall(DELETE);
            callableStatement.setInt(1, id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void addUTransaction(User user) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = BaseRepository.getConnection();
            connection.setAutoCommit(false);
            preparedStatement = connection.prepareStatement(ADD_TRANSACTION);
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getCountry());
            int rowEffected = preparedStatement.executeUpdate();

            if (rowEffected == 1) {
                connection.commit();
            } else {
                connection.rollback();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
