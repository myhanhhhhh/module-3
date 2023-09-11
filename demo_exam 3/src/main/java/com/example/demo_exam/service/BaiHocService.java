package com.example.demo_exam.service;

import com.example.demo_exam.model.BaiHoc;
import com.example.demo_exam.model.BaiHocDto;
import com.example.demo_exam.repository.BaiHocRepository;
import com.example.demo_exam.repository.IBaiHocRepository;

import java.util.List;

public class BaiHocService implements IBaiHocService{
    private final IBaiHocRepository baiHocRepository = new BaiHocRepository();
    @Override
    public List<BaiHocDto> showDS() {
        return baiHocRepository.showDS();
    }

    @Override
    public void xoaBaiHoc(int id) {
        baiHocRepository.xoaBaiHoc(id);
    }

    @Override
    public void them(BaiHoc baiHoc) {
        baiHocRepository.them(baiHoc);
    }

    @Override
    public void sua(BaiHoc baiHoc) {
        baiHocRepository.sua(baiHoc);
    }

    @Override
    public BaiHoc findById(int maBaiHoc) {
       return baiHocRepository.findById(maBaiHoc);
    }
}
