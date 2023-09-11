package com.example.demo_exam.repository;

import com.example.demo_exam.model.BaiHoc;
import com.example.demo_exam.model.BaiHocDto;

import java.util.List;

public interface IBaiHocRepository {
    List<BaiHocDto> showDS();
    void xoaBaiHoc(int id);

    void them(BaiHoc baiHoc);
    void sua(BaiHoc baiHoc);
    BaiHoc findById(int maBaiHoc);

}
