package service;

import model.LoaiBaiHoc;
import repository.ILoaiBaiHocRepository;
import repository.LoaiBaiHocRepository;

import java.util.List;

public class LoaiBaiHocService implements ILoaiBaiHocService{
    private ILoaiBaiHocRepository loaiBaiHocRepository = new LoaiBaiHocRepository();
    @Override
    public List<LoaiBaiHoc> showListStyle() {
        return loaiBaiHocRepository.showListStyle();
    }
}
