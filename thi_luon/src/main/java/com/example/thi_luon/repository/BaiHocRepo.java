package com.example.thi_luon.repository;

import com.example.thi_luon.model.BaiHoc;
import com.example.thi_luon.model.dto.BaiHocDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaiHocRepo implements IBaiHocRepo{
    public static final String SELECT_DTO = "select id_bai_hoc, tieu_de, ten_loai_bai_hoc, ten_do_kho,ten_module,link_bai_hoc from bai_hoc as bh " +
            "join loai_bai_hoc as lbh on bh.id_loai_bai_hoc =lbh.id_loai_bai_hoc " +
            "join loai_do_kho as ldk on bh.id_do_kho = ldk.id_do_kho " +
            "join loai_module as lmd on bh.id_module = lmd.id_module " +
            "where da_xoa = 0;";
    public static final String DELETE = "update bai_hoc set da_xoa = 1 where id_bai_hoc = ? ";

    public static final String INSERT = "INSERT INTO `quan_ly_bai_hoc`.`bai_hoc` (`tieu_de`, `id_loai_bai_hoc`, `id_do_kho`, `link_bai_hoc`, `id_module`) VALUES (?,?,?,?,?);";
    @Override
    public List<BaiHocDto> showDs() {
        Connection connection = Base.getConnection();
        List<BaiHocDto> baiHocDtos = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_DTO);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id_bai_hoc");
                String tieuDe = resultSet.getString("tieu_de");
                String tenLoaiBaiHoc = resultSet.getString("ten_loai_bai_hoc");
                String tenDoKho = resultSet.getString("ten_do_kho");
                String tenModule = resultSet.getString("ten_module");
                String link = resultSet.getString("link_bai_hoc");
                baiHocDtos.add(new BaiHocDto(id,tieuDe,tenLoaiBaiHoc,tenDoKho,tenModule,link));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return baiHocDtos;
    }

    @Override
    public void xoaBaiHoc(int id) {
        Connection connection = Base.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void them(BaiHoc baiHoc1) {
        Connection connection = Base.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1,baiHoc1.getTieuDe());
            preparedStatement.setInt(2,baiHoc1.getLoaiBaihoc());
            preparedStatement.setInt(3,baiHoc1.getDoKho());
            preparedStatement.setString(4,baiHoc1.getLink());
            preparedStatement.setInt(5,baiHoc1.getModule());
            preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
