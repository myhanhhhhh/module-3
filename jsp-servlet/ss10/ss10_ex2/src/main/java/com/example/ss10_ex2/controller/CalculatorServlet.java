package com.example.ss10_ex2.controller;

import com.example.ss10_ex2.service.Calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculatorServlet", value = "/calculate")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double fNumber = Double.parseDouble(request.getParameter("f-operand"));
        double sNumber = Double.parseDouble(request.getParameter("s-operand"));
        String operator = request.getParameter("operator");

        try {
            double result = Calculator.calculate(fNumber, sNumber, operator);
            request.setAttribute("fNumber", fNumber);
            request.setAttribute("operator", operator);
            request.setAttribute("sNumber", sNumber);
            request.setAttribute("result", result);

            request.getRequestDispatcher("result.jsp").forward(request, response);
        } catch (Exception e) {
        }
    }
}
