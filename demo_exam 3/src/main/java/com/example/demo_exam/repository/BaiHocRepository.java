package com.example.demo_exam.repository;

import com.example.demo_exam.model.BaiHoc;
import com.example.demo_exam.model.BaiHocDto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaiHocRepository implements IBaiHocRepository{
    private static final String SELECT = "select ma_bai_hoc,tieu_de,ten_loai_bai_hoc,do_kho,ten_module,link_bai_hoc from bai_hoc " +
            " join loai_bai_hoc on bai_hoc.ma_loai_bai_hoc = loai_bai_hoc.ma_loai_bai_hoc where da_xoa = 0;";

    private static final String DELETE = "update bai_hoc set da_xoa = 1 where ma_bai_hoc = ? ";
    private static final String ADD = "insert into bai_hoc(ma_loai_bai_hoc,tieu_de,do_kho,link_bai_hoc,ten_module) values(?,?,?,?,?)";
    private static final String UPDATE = "update bai_hoc set  ma_loai_bai_hoc = ?,  tieu_de = ?, do_kho = ?, link_bai_hoc = ?,ten_module = ? where ma_bai_hoc = ?";
    private static final String FIND_BY_ID = "select * from bai_hoc where ma_bai_hoc = ? ;";
    @Override
    public List<BaiHocDto> showDS() {
        Connection connection = BaseRepository.getConnection();
        List<BaiHocDto> list = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int maBaiHoc = resultSet.getInt("ma_bai_hoc");
                String tieuDe = resultSet.getString("tieu_de");
                String tenLoaiBaiHoc = resultSet.getString("ten_loai_bai_hoc");
                int doKho = resultSet.getInt("do_kho");
                int tenModule = resultSet.getInt("ten_module");
                String linkBaiHoc = resultSet.getString("link_bai_hoc");
                list.add(new BaiHocDto(maBaiHoc,tieuDe,tenLoaiBaiHoc,doKho,tenModule,linkBaiHoc));
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }

    @Override
    public void xoaBaiHoc(int id) {
        Connection connection = BaseRepository.getConnection();
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
    public void them(BaiHoc baiHoc) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD);
            preparedStatement.setInt(1, baiHoc.getMaLoaiBaiHoc());
            preparedStatement.setString(2, baiHoc.getTieuDe());
            preparedStatement.setInt(3,baiHoc.getDoKho());
            preparedStatement.setString(4, baiHoc.getLinkBaiHoc());
            preparedStatement.setInt(5,baiHoc.getTen_module());
            preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void sua(BaiHoc baiHoc) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE);
            preparedStatement.setInt(1, baiHoc.getMaLoaiBaiHoc());
            preparedStatement.setString(2, baiHoc.getTieuDe());
            preparedStatement.setInt(3,baiHoc.getDoKho());
            preparedStatement.setString(4, baiHoc.getLinkBaiHoc());
            preparedStatement.setInt(5,baiHoc.getTen_module());
            preparedStatement.setInt(6,baiHoc.getMaBaiHoc());
            preparedStatement.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    public BaiHoc findById(int maBaiHoc) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1,maBaiHoc);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()){
                int idBai = resultSet.getInt("ma_bai_hoc");
                String tieuDe = resultSet.getString("tieu_de");
                int idLoaiBaiHoc = resultSet.getInt("ma_loai_bai_hoc");
                int doKho = resultSet.getInt("do_kho");
                String linkBaiHoc = resultSet.getString("link_bai_hoc");
                int tenModule = resultSet.getInt("ten_module");
                return new BaiHoc(idBai,tieuDe,idLoaiBaiHoc,doKho,tenModule,linkBaiHoc);
            }
            connection.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return null;
    }
}
