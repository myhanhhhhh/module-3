package com.example.ex1.controller;

import com.example.ex1.model.User;
import com.example.ex1.service.IUserService;
import com.example.ex1.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/user")

public class UserServlet extends HttpServlet {
    private IUserService service = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "update":
                showformupdate(req, resp);
                break;
            default:
                getAll(req, resp);
                break;
        }
    }

    private void getAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> list = service.getAll();
        request.setAttribute("list", list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/list.jsp");
        requestDispatcher.forward(request, response);
    }

    private void showformupdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        User user = service.findById(id);
        req.setAttribute("user", user);
        req.getRequestDispatcher("/update.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "getAll":
                getAll(req, resp);
                break;
            case "update":
                update(req, resp);
                break;
            case "delete":
                delete(req, resp);
                break;
            case "addTransaction":
                addTransaction(req, resp);
                break;
            default:
                getAll(req, resp);
                break;
        }
    }

    private void addTransaction(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String country = req.getParameter("country");
        User user = new User(name, email, country);
        this.service.addTransaction(user);
        try {
            resp.sendRedirect("/user");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String country = req.getParameter("country");
        User user = new User(id, name, email, country);
        service.update(user);
        req.getRequestDispatcher("/update.jsp").forward(req, resp);
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id_delete"));
        service.delete(id);
        resp.sendRedirect("/user");
    }
}
