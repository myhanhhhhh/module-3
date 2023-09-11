package com.example.thi_luon.service;

import com.example.thi_luon.model.LoaiBaiHoc;
import com.example.thi_luon.repository.ILoaiBaiHocRepo;
import com.example.thi_luon.repository.LoaiBaiHocRepo;

import java.util.List;

public class LoaiBaiHocService implements ILoaiBaiHocService {
    ILoaiBaiHocRepo loaiBaiHocRepo = new LoaiBaiHocRepo();
    @Override
    public List<LoaiBaiHoc> danhSachBaiHoc() {
        return loaiBaiHocRepo.danhSachBaiHoc();
    }
}
