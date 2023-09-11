package com.example.thi_luon.repository;

import com.example.thi_luon.model.LoaiModule;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoaiModuleRepo implements ILoaiModuleRepo{
    public static final String SELECT = "select * from loai_module";
    @Override
    public List<LoaiModule> danhSachModule() {
        List<LoaiModule> list = new ArrayList<>();
        Connection connection = Base.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id_module");
                String name = resultSet.getString("ten_module");
                list.add(new LoaiModule(id,name));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}
