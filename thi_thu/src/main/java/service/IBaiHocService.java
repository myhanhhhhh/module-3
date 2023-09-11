package service;

import model.BaiHoc;
import model.BaiHocDto;

import java.util.List;

public interface IBaiHocService {
    List<BaiHocDto> showList();
    void add(BaiHoc baiHoc);
    void delete(int id);
}
