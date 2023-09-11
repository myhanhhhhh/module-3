package com.example.thi_luon.repository;

import com.example.thi_luon.model.LoaiBaiHoc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoaiBaiHocRepo implements ILoaiBaiHocRepo{
    public static final String SELECT = "select * from loai_bai_hoc";
    @Override
    public List<LoaiBaiHoc> danhSachBaiHoc() {
        List<LoaiBaiHoc> list = new ArrayList<>();
        Connection connection = Base.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id_loai_bai_hoc");
                String name = resultSet.getString("ten_loai_bai_hoc");
                list.add(new LoaiBaiHoc(id,name));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}
