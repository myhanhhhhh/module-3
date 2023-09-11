package com.example.thi_luon.model;

public class LoaiModule {
    private int loaiModule;
    private String tenModule;

    public LoaiModule() {
    }

    public LoaiModule(int loaiModule) {
        this.loaiModule = loaiModule;
    }

    public LoaiModule(String tenModule) {
        this.tenModule = tenModule;
    }

    public LoaiModule(int loaiModule, String tenModule) {
        this.loaiModule = loaiModule;
        this.tenModule = tenModule;
    }

    public int getLoaiModule() {
        return loaiModule;
    }

    public void setLoaiModule(int loaiModule) {
        this.loaiModule = loaiModule;
    }

    public String getTenModule() {
        return tenModule;
    }

    public void setTenModule(String tenModule) {
        this.tenModule = tenModule;
    }
}
