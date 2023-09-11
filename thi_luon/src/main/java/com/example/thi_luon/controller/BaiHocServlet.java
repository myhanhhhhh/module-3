package com.example.thi_luon.controller;

import com.example.thi_luon.model.BaiHoc;
import com.example.thi_luon.model.LoaiBaiHoc;
import com.example.thi_luon.model.LoaiDoKho;
import com.example.thi_luon.model.dto.BaiHocDto;
import com.example.thi_luon.model.LoaiModule;
import com.example.thi_luon.service.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BaiHocServlet", value = "/BaiHocServlet")
public class BaiHocServlet extends HttpServlet {
    IBaiHocService baiHocService = new BaiHocService();
    ILoaiBaiHocService loaiBaiHocService = new LoaiBaiHocService();
    ILoaiDoKhoService loaiDoKhoService = new LoaiDoKhoService();
    ILoaiModuleService loaiModuleService = new LoaiModuleService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hanhDong = request.getParameter("hanhDong");
        if (hanhDong == null) {
            hanhDong = "";
        }
        switch (hanhDong) {
            case "them":
                trangThemBaiHoc(request, response);
                break;
            default:
                danhSachBaiHoc(request, response);
                break;
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hanhDong = request.getParameter("hanhDong");
        if (hanhDong == null) {
            hanhDong = "";
        }
        switch (hanhDong) {
            case "them":
                themMoi(request, response);
                break;
            case "xoa":
                xoaBaiHoc(request, response);
                break;
            default:
                danhSachBaiHoc(request, response);
                break;
        }
    }


    private void danhSachBaiHoc(HttpServletRequest request, HttpServletResponse response) {
        List<BaiHocDto> danhSachBaiHoc = baiHocService.showDs();
        request.setAttribute("danhSach", danhSachBaiHoc);
        try {
            request.getRequestDispatcher("list.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void xoaBaiHoc(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("code"));
        try {
            baiHocService.xoaBaiHoc(id);
            response.sendRedirect("BaiHocServlet");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void trangThemBaiHoc(HttpServletRequest request, HttpServletResponse response) {
        try {
            List<LoaiBaiHoc> baiHocs = loaiBaiHocService.danhSachBaiHoc();
            List<LoaiDoKho> doKhos = loaiDoKhoService.danhSachDoKho();
            List<LoaiModule> modules = loaiModuleService.danhSachModule();
            request.setAttribute("loaiBaiHoc", baiHocs);
            request.setAttribute("loaiDoKho", doKhos);
            request.setAttribute("loaiModule", modules);
            request.getRequestDispatcher("create.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void themMoi(HttpServletRequest request, HttpServletResponse response) {
        String tieuDe = request.getParameter("tieuDe");
        int baiHoc = Integer.parseInt(request.getParameter("loaiBaiHoc"));
        int doKho = Integer.parseInt(request.getParameter("loaiDoKho"));
        int module = Integer.parseInt(request.getParameter("loaiModule"));
        String link = request.getParameter("link");

        BaiHoc baiHoc1 = new BaiHoc(tieuDe, baiHoc, doKho, module, link);

        baiHocService.them(baiHoc1);
        try {
            request.setAttribute("message","ban da them moi thanh cong");
            request.getRequestDispatcher("create.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}