package com.example.demo_exam.repository;

import com.example.demo_exam.model.LoaiBaiHoc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoaiBaiHocRepository implements ILoaiBaiHocRepository{
    private static final String SELECT = "select * from loai_bai_hoc;";
    @Override
    public List<LoaiBaiHoc> danhSachBaiHoc() {
        List<LoaiBaiHoc> list = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_loai_bai_hoc");
                String name = resultSet.getString("ten_loai_bai_hoc");
                list.add(new LoaiBaiHoc(id, name));
            }
            preparedStatement.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
}
