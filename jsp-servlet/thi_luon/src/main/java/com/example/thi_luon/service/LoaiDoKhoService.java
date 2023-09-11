package com.example.thi_luon.service;

import com.example.thi_luon.model.LoaiDoKho;
import com.example.thi_luon.repository.ILoaiDoKhoRepo;
import com.example.thi_luon.repository.LoaiDoKhoRepo;

import java.util.List;

public class LoaiDoKhoService implements ILoaiDoKhoService{
    ILoaiDoKhoRepo loaiDoKhoRepo = new LoaiDoKhoRepo();
    @Override
    public List<LoaiDoKho> danhSachDoKho() {
        return loaiDoKhoRepo.danhSachDoKho();
    }
}
