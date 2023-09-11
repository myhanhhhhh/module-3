package controller;

import model.BaiHoc;
import model.BaiHocDto;
import model.LoaiBaiHoc;
import service.BaiHocService;
import service.IBaiHocService;
import service.ILoaiBaiHocService;
import service.LoaiBaiHocService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

@WebServlet(name = "BaiHocServlet", value = "/bai-hoc")
public class BaiHocServlet extends HttpServlet {
    private IBaiHocService baiHocService = new BaiHocService();
    private ILoaiBaiHocService loaiBaiHocService = new LoaiBaiHocService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        note
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            default:
                showList(request, response);
                break;
        }

    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        List<LoaiBaiHoc> loaiBaiHocList = loaiBaiHocService.showListStyle();
        request.setAttribute("loaiBaiHocList",loaiBaiHocList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showList(HttpServletRequest request, HttpServletResponse response) {
        List<BaiHocDto> showList = baiHocService.showList();
        request.setAttribute("showList", showList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                add(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
    int id = Integer.parseInt(request.getParameter("id_delete"));
    baiHocService.delete(id);
        try {
            response.sendRedirect("/bai-hoc");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void add(HttpServletRequest request, HttpServletResponse response) {
    String title = request.getParameter("title");
    String link = request.getParameter("link");
    int styleId = Integer.parseInt(request.getParameter("loaiBaiHocList"));
    baiHocService.add(new BaiHoc(title,link,styleId));
    request.setAttribute("thongBao","Thêm mới thành công!");
    RequestDispatcher dispatcher = request.getRequestDispatcher("/create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
