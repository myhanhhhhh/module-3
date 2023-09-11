package com.example.demo_exam.service;

import com.example.demo_exam.model.BaiHoc;
import com.example.demo_exam.model.BaiHocDto;

import java.util.List;

public interface IBaiHocService {
    List<BaiHocDto> showDS();
    void xoaBaiHoc(int id);

    void them(BaiHoc baiHoc);
    void sua(BaiHoc baiHoc);
    BaiHoc findById(int maBaiHoc);
}
