package com.example.thi_luon.service;

import com.example.thi_luon.model.LoaiModule;
import com.example.thi_luon.repository.ILoaiModuleRepo;
import com.example.thi_luon.repository.LoaiModuleRepo;

import java.util.List;

public class LoaiModuleService implements ILoaiModuleService {
    ILoaiModuleRepo loaiModuleRepo = new LoaiModuleRepo();
    @Override
    public List<LoaiModule> danhSachModule() {
        return loaiModuleRepo.danhSachModule();
    }
}
