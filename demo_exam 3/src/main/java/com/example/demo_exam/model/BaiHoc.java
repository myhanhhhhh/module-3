package com.example.demo_exam.model;

public class BaiHoc {
    private int maBaiHoc;
    private String tieuDe;
    private int maLoaiBaiHoc;
    private int doKho;
    private int ten_module;
    private String linkBaiHoc;

    public BaiHoc() {
    }

    public BaiHoc(String tieuDe, int maLoaiBaiHoc, int doKho, int ten_module, String linkBaiHoc) {
        this.tieuDe = tieuDe;
        this.maLoaiBaiHoc = maLoaiBaiHoc;
        this.doKho = doKho;
        this.ten_module = ten_module;
        this.linkBaiHoc = linkBaiHoc;
    }

    public BaiHoc(int maBaiHoc, String tieuDe, int maLoaiBaiHoc, int doKho, int ten_module, String linkBaiHoc) {
        this.maBaiHoc = maBaiHoc;
        this.tieuDe = tieuDe;
        this.maLoaiBaiHoc = maLoaiBaiHoc;
        this.doKho = doKho;
        this.ten_module = ten_module;
        this.linkBaiHoc = linkBaiHoc;
    }

    public BaiHoc(int id, String tieuDe, String tenLoaiBaiHoc, int doKho, int tenModule, String linkBaiHoc) {
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

    public int getMaLoaiBaiHoc() {
        return maLoaiBaiHoc;
    }

    public void setMaLoaiBaiHoc(int maLoaiBaiHoc) {
        this.maLoaiBaiHoc = maLoaiBaiHoc;
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
