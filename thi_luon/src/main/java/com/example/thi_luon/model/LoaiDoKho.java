package com.example.thi_luon.model;

public class LoaiDoKho {
    private int idDoKho;
    private String tenDoKho;

    public LoaiDoKho() {
    }

    public LoaiDoKho(int idDoKho) {
        this.idDoKho = idDoKho;
    }

    public LoaiDoKho(String tenDoKho) {
        this.tenDoKho = tenDoKho;
    }

    public LoaiDoKho(int idDoKho, String tenDoKho) {
        this.idDoKho = idDoKho;
        this.tenDoKho = tenDoKho;
    }

    public int getIdDoKho() {
        return idDoKho;
    }

    public void setIdDoKho(int idDoKho) {
        this.idDoKho = idDoKho;
    }

    public String getTenDoKho() {
        return tenDoKho;
    }

    public void setTenDoKho(String tenDoKho) {
        this.tenDoKho = tenDoKho;
    }
}
