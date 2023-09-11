package com.example.thi_luon.model;

public class BaiHoc {
    private int idBaiHoc;
    private String tieuDe;
    private int loaiBaihoc;
    private int doKho;
    private int module;
    private String link;

    public BaiHoc() {
    }

    public BaiHoc(String tieuDe, int loaiBaihoc, int doKho, int module, String link) {
        this.tieuDe = tieuDe;
        this.loaiBaihoc = loaiBaihoc;
        this.doKho = doKho;
        this.module = module;
        this.link = link;
    }

    public BaiHoc(int idBaiHoc, String tieuDe, int loaiBaihoc, int doKho, int module, String link) {
        this.idBaiHoc = idBaiHoc;
        this.tieuDe = tieuDe;
        this.loaiBaihoc = loaiBaihoc;
        this.doKho = doKho;
        this.module = module;
        this.link = link;
    }

    public int getIdBaiHoc() {
        return idBaiHoc;
    }

    public void setIdBaiHoc(int idBaiHoc) {
        this.idBaiHoc = idBaiHoc;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public int getLoaiBaihoc() {
        return loaiBaihoc;
    }

    public void setLoaiBaihoc(int loaiBaihoc) {
        this.loaiBaihoc = loaiBaihoc;
    }

    public int getDoKho() {
        return doKho;
    }

    public void setDoKho(int doKho) {
        this.doKho = doKho;
    }

    public int getModule() {
        return module;
    }

    public void setModule(int module) {
        this.module = module;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
