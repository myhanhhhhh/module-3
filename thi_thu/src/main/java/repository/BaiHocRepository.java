package repository;

import model.BaiHoc;
import model.BaiHocDto;

import javax.servlet.RequestDispatcher;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BaiHocRepository implements IBaiHocRepository {
    private static final String SELECT = "select b.ma_bai_hoc, b.tieu_de, b.link, l.ten_loai_bai_hoc\n" +
            "from bai_hoc b\n" +
            "join loai_bai_hoc l on b.ma_loai_bai_hoc = l.ma_loai_bai_hoc\n" +
            "where b.trang_thai_xoa = 0;";
    private static final String INSERT = "insert into bai_hoc (tieu_de,module,level,link,ma_loai_bai_hoc)\n" +
            "values\n" +
            "(?,?,?,?,?);";
    private static final String DELETE = "update bai_hoc set trang_thai_xoa = 1 where ma_bai_hoc = ?;";

    @Override
    public List<BaiHocDto> showList() {
        List<BaiHocDto> baiHocList = new ArrayList<>();
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("ma_bai_hoc");
                String title = resultSet.getString("tieu_de");
                int module = resultSet.getInt("module");
                int level = resultSet.getInt("level");
                String link = resultSet.getString("link");
                String styleName = resultSet.getString("ten_loai_bai_hoc");
                baiHocList.add(new BaiHocDto(id, title, module,level, link, styleName));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return baiHocList;
    }

    @Override
    public void add(BaiHoc baiHoc) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT);
            preparedStatement.setString(1, baiHoc.getTitle());
            preparedStatement.setInt(2, baiHoc.getModule());
            preparedStatement.setInt(3, baiHoc.getLevel());
            preparedStatement.setString(4, baiHoc.getLink());
            preparedStatement.setInt(5, baiHoc.getStyleId());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void delete(int id) {
        Connection connection = BaseRepository.getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(DELETE);
            preparedStatement.setInt(1,id);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
