package com.example.thi_luon.repository;

import com.example.thi_luon.model.BaiHoc;
import com.example.thi_luon.model.dto.BaiHocDto;

import java.util.List;

public interface IBaiHocRepo {
    List<BaiHocDto> showDs();

    void xoaBaiHoc(int id);

    void them(BaiHoc baiHoc1);
}
