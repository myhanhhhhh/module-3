package com.example.ss9;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DiscountServlet", urlPatterns = "/discount")
public class DiscountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        double percent = Double.parseDouble(req.getParameter("percent"));
        double discount_amount = price * percent * 0.01;
        double discount_price = price - discount_amount;

        req.setAttribute("description", description);
        req.setAttribute("price", price);
        req.setAttribute("percent", percent);
        req.setAttribute("discount_amount", discount_amount);
        req.setAttribute("discount_price", discount_price);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/calculator.jsp");
        requestDispatcher.forward(req,resp);
    }
}
