package com.example.thi_luon.model.dto;

public class BaiHocDto {
    private int idBaiHoc;
    private String tieuDe;
    private String loaiBaiHoc;
    private String doKho;
    private String module;
    private String link;

    public BaiHocDto() {
    }

    public BaiHocDto(String tieuDe, String loaiBaiHoc, String doKho, String module, String link) {
        this.tieuDe = tieuDe;
        this.loaiBaiHoc = loaiBaiHoc;
        this.doKho = doKho;
        this.module = module;
        this.link = link;
    }

    public BaiHocDto(int idBaiHoc, String tieuDe, String loaiBaiHoc, String doKho, String module, String link) {
        this.idBaiHoc = idBaiHoc;
        this.tieuDe = tieuDe;
        this.loaiBaiHoc = loaiBaiHoc;
        this.doKho = doKho;
        this.module = module;
        this.link = link;
    }

    public int getIdBaiHoc() {
        return idBaiHoc;
    }

    public void setBaiHoc(int baiHoc) {
        this.idBaiHoc = baiHoc;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public String getLoaiBaiHoc() {
        return loaiBaiHoc;
    }

    public void setLoaiBaiHoc(String loaiBaiHoc) {
        this.loaiBaiHoc = loaiBaiHoc;
    }

    public String getDoKho() {
        return doKho;
    }

    public void setDoKho(String doKho) {
        this.doKho = doKho;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
