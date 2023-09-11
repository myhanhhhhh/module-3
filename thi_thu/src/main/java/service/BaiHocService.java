package service;

import model.BaiHoc;
import model.BaiHocDto;
import repository.BaiHocRepository;
import repository.IBaiHocRepository;

import java.util.List;

public class BaiHocService implements IBaiHocService {
    private IBaiHocRepository baiHocRepository = new BaiHocRepository();

    @Override
    public List<BaiHocDto> showList() {
        return baiHocRepository.showList();
    }

    @Override
    public void add(BaiHoc baiHoc) {
        baiHocRepository.add(baiHoc);
    }

    @Override
    public void delete(int id) {
        baiHocRepository.delete(id);
    }
}
