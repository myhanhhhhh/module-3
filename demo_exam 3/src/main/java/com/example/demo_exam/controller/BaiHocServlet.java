package com.example.demo_exam.controller;

import com.example.demo_exam.model.BaiHoc;
import com.example.demo_exam.model.BaiHocDto;
import com.example.demo_exam.model.LoaiBaiHoc;
import com.example.demo_exam.service.BaiHocService;
import com.example.demo_exam.service.IBaiHocService;
import com.example.demo_exam.service.ILoaiBaiHocService;
import com.example.demo_exam.service.LoaiBaiHocService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BaiHocServlet", value = "/BaiHocServlet")
public class BaiHocServlet extends HttpServlet {
    IBaiHocService baiHocService = new BaiHocService();
    ILoaiBaiHocService loaiBaiHocService = new LoaiBaiHocService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "them":
                trangThemBaiHoc(request,response);
                break;
            case "sua":
                trangSuaBaiHoc(request,response);
                break;
            default:
                danhSachBaiHoc(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "them":
                themMoi(request,response);
                break;
            case "xoa":
                xoaBaiHoc(request, response);
                break;
            case "sua":
                suaBaiHoc(request, response);
                break;
            default:
                danhSachBaiHoc(request,response);
        }

    }

    private void suaBaiHoc(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        BaiHoc baiHoc = baiHocService.findById(id);
        String tieuDe = request.getParameter("tieuDe");
        int maLoaiBaiHoc = Integer.parseInt(request.getParameter("maLoaiBaiHoc"));
        int doKho = Integer.parseInt(request.getParameter("doKho"));
        int tenModule = Integer.parseInt(request.getParameter("tenModule"));
        String linkBaiHoc = request.getParameter("linkBaiHoc");
        baiHoc.setMaLoaiBaiHoc(maLoaiBaiHoc);
        baiHoc.setLinkBaiHoc(linkBaiHoc);
        baiHoc.setDoKho(doKho);
        baiHoc.setTen_module(tenModule);
        baiHoc.setTieuDe(tieuDe);
        baiHocService.sua(baiHoc);
        request.setAttribute("message", "ban da sua thanh cong");
        try {
            request.getRequestDispatcher("edit.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
    private void trangThemBaiHoc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<LoaiBaiHoc> loaiBaiHocs = loaiBaiHocService.danhSachBaiHoc();
        request.setAttribute("loaiBaiHoc",loaiBaiHocs);
        request.getRequestDispatcher("/create.jsp").forward(request,response);
    }

    private void trangSuaBaiHoc(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        List<LoaiBaiHoc> loaiBaiHocs = loaiBaiHocService.danhSachBaiHoc();
        BaiHoc baiHoc = baiHocService.findById(id);
        request.setAttribute("loaiBaiHoc",loaiBaiHocs);
        request.setAttribute("baiHoc",baiHoc);
        request.getRequestDispatcher("/edit.jsp").forward(request,response);
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

    private void themMoi(HttpServletRequest request, HttpServletResponse response) {
        String tieuDe = request.getParameter("tieuDe");
        int maLoaiBaiHoc = Integer.parseInt(request.getParameter("maLoaiBaiHoc"));
        int doKho = Integer.parseInt(request.getParameter("doKho"));
        int tenModule = Integer.parseInt(request.getParameter("tenModule"));
        String linkBaiHoc = request.getParameter("linkBaiHoc");
        BaiHoc baiHoc = new BaiHoc(tieuDe,maLoaiBaiHoc,doKho,tenModule,linkBaiHoc);
        baiHocService.them(baiHoc);
        request.setAttribute("message","ban da them moi thanh cong");
        try {
            request.getRequestDispatcher("create.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void danhSachBaiHoc(HttpServletRequest request, HttpServletResponse response) {
        List<BaiHocDto> list = baiHocService.showDS();
        request.setAttribute("danhsach",list);
        try {
            request.getRequestDispatcher("list.jsp").forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }


}