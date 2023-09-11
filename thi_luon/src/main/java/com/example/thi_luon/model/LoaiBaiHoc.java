package com.example.thi_luon.model;

public class LoaiBaiHoc {
    int idLoaiBaiHoc;
    String tenLoaiBaiHoc;

    public LoaiBaiHoc() {
    }

    public LoaiBaiHoc(int idLoaiBaiHoc) {
        this.idLoaiBaiHoc = idLoaiBaiHoc;
    }

    public LoaiBaiHoc(String tenLoaiBaiHoc) {
        this.tenLoaiBaiHoc = tenLoaiBaiHoc;
    }

    public LoaiBaiHoc(int idLoaiBaiHoc, String tenLoaiBaiHoc) {
        this.idLoaiBaiHoc = idLoaiBaiHoc;
        this.tenLoaiBaiHoc = tenLoaiBaiHoc;
    }

    public int getIdLoaiBaiHoc() {
        return idLoaiBaiHoc;
    }

    public void setIdLoaiBaiHoc(int idLoaiBaiHoc) {
        this.idLoaiBaiHoc = idLoaiBaiHoc;
    }

    public String getTenLoaiBaiHoc() {
        return tenLoaiBaiHoc;
    }

    public void setTenLoaiBaiHoc(String tenLoaiBaiHoc) {
        this.tenLoaiBaiHoc = tenLoaiBaiHoc;
    }
}
