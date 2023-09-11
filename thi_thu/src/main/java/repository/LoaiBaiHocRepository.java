package repository;

import model.LoaiBaiHoc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LoaiBaiHocRepository implements ILoaiBaiHocRepository{
    private static final String SELECT_STYLE ="select * from loai_bai_hoc;";
    @Override
    public List<LoaiBaiHoc> showListStyle() {
        List<LoaiBaiHoc> loaiBaiHocList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_STYLE);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("ma_loai_bai_hoc");
                String styleName = resultSet.getString("ten_loai_bai_hoc");
                loaiBaiHocList.add(new LoaiBaiHoc(id,styleName));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return loaiBaiHocList;
    }
}
