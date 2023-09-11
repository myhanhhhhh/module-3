package com.example.demo_exam.model;

public class BaiHocDto {
    private int maBaiHoc;
    private String tieuDe;
    private String tenLoaiBaiHoc;
    private int doKho;
    private int ten_module;
    private String linkBaiHoc;

    public BaiHocDto() {
    }

    public BaiHocDto(int maBaiHoc, String tieuDe, String tenLoaiBaiHoc, int doKho, int ten_module, String linkBaiHoc) {
        this.maBaiHoc = maBaiHoc;
        this.tieuDe = tieuDe;
        this.tenLoaiBaiHoc = tenLoaiBaiHoc;
        this.doKho = doKho;
        this.ten_module = ten_module;
        this.linkBaiHoc = linkBaiHoc;
    }

    public BaiHocDto(String tieuDe, String tenLoaiBaiHoc, int doKho, int ten_module, String linkBaiHoc) {
        this.tieuDe = tieuDe;
        this.tenLoaiBaiHoc = tenLoaiBaiHoc;
        this.doKho = doKho;
        this.ten_module = ten_module;
        this.linkBaiHoc = linkBaiHoc;
    }

    public int getMaBaiHoc() {
        return maBaiHoc;
    }

    public void setMaBaiHoc(int maBaiHoc) {
        this.maBaiHoc = maBaiHoc;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public String getTenLoaiBaiHoc() {
        return tenLoaiBaiHoc;
    }

    public void setTenLoaiBaiHoc(String tenLoaiBaiHoc) {
        this.tenLoaiBaiHoc = tenLoaiBaiHoc;
    }

    public int getDoKho() {
        return doKho;
    }

    public void setDoKho(int doKho) {
        this.doKho = doKho;
    }

    public int getTen_module() {
        return ten_module;
    }

    public void setTen_module(int ten_module) {
        this.ten_module = ten_module;
    }

    public String getLinkBaiHoc() {
        return linkBaiHoc;
    }

    public void setLinkBaiHoc(String linkBaiHoc) {
        this.linkBaiHoc = linkBaiHoc;
    }
}
