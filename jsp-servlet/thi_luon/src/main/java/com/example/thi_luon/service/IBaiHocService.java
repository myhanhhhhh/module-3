package com.example.thi_luon.service;

import com.example.thi_luon.model.BaiHoc;
import com.example.thi_luon.model.dto.BaiHocDto;

import java.util.List;

public interface IBaiHocService {
    List<BaiHocDto> showDs();

    void xoaBaiHoc(int id);

    void them(BaiHoc baiHoc1);
}
