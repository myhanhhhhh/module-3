package com.example.thi_luon.repository;

import com.example.thi_luon.model.LoaiBaiHoc;
import com.example.thi_luon.model.LoaiDoKho;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoaiDoKhoRepo implements ILoaiDoKhoRepo{
    public static final String SELECT = "select * from loai_do_kho";
    @Override
    public List<LoaiDoKho> danhSachDoKho() {
        List<LoaiDoKho> list = new ArrayList<>();
        Connection connection = Base.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id_do_kho");
                String name = resultSet.getString("ten_do_kho");
                list.add(new LoaiDoKho(id,name));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}
