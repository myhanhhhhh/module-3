package com.example.demo_exam.service;

import com.example.demo_exam.model.LoaiBaiHoc;
import com.example.demo_exam.repository.ILoaiBaiHocRepository;
import com.example.demo_exam.repository.LoaiBaiHocRepository;

import java.util.List;

public class LoaiBaiHocService implements ILoaiBaiHocService{
    ILoaiBaiHocRepository loaiBaiHocRepository = new LoaiBaiHocRepository();
    @Override
    public List<LoaiBaiHoc> danhSachBaiHoc() {
        return loaiBaiHocRepository.danhSachBaiHoc();
    }
}
