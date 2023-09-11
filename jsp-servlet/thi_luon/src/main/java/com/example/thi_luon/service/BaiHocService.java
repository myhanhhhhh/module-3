package com.example.thi_luon.service;

import com.example.thi_luon.model.BaiHoc;
import com.example.thi_luon.model.dto.BaiHocDto;
import com.example.thi_luon.repository.BaiHocRepo;
import com.example.thi_luon.repository.IBaiHocRepo;

import java.util.List;

public class BaiHocService implements IBaiHocService{
    IBaiHocRepo baiHocRepo = new BaiHocRepo();

    @Override
    public List<BaiHocDto> showDs() {
        return baiHocRepo.showDs();
    }

    @Override
    public void xoaBaiHoc(int id) {
        baiHocRepo.xoaBaiHoc(id);
    }

    @Override
    public void them(BaiHoc baiHoc1) {
        baiHocRepo.them(baiHoc1);
    }
}
