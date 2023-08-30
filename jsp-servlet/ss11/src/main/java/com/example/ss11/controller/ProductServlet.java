package com.example.ss11.controller;

import com.example.ss11.model.Product;
import com.example.ss11.service.IProductService;
import com.example.ss11.service.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")

public class ProductServlet extends HttpServlet {
    private IProductService service = new ProductService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "create":
                showformcreate(req, resp);
                break;
            case "update":
                showformupdate(req, resp);
                break;
////            case "delete":
//                showformdelete(req, resp);
//                break;
            case "search":
                showformsearch(req, resp);
                break;
            default:
                getAll(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null) {
            action = " ";
        }
        switch (action) {
            case "create":
                create(req, resp);
                break;
            case "update":
                update(req, resp);
                break;
            case "delete":
                delete(req, resp);
                break;
            case "search":
                search(req, resp);
                break;
            default:
                break;
        }
    }

    private void getAll(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> list = service.getAll();
        req.setAttribute("list", list);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("list.jsp");
        requestDispatcher.forward(req, resp);
    }


    private void showformcreate(HttpServletRequest req, HttpServletResponse resp) {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/create.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void create(HttpServletRequest req, HttpServletResponse resp) {
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        String company = req.getParameter("company");
        service.create(new Product(name, price, description, company));
        try {
            resp.sendRedirect("/product");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showformupdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Product product = service.findById(id);
        request.setAttribute("product", product);
        request.getRequestDispatcher("/update.jsp").forward(request, response);
    }

    private void update(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        String description = req.getParameter("description");
        String company = req.getParameter("company");
        Product product = new Product(id,name,price,description,company);
        service.update(product);
//        Product product = service.findById(id);
//        product.setName(name);
//        product.setPrice(price);
//        product.setDescription(description);
//        product.setCompany(company);
//        service.update(id, product);
//        req.setAttribute("product", product);
        req.getRequestDispatcher("/update.jsp").forward(req, resp);
    }

    private void delete(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("id_delete"));
//        Product product = service.findById(id);
        service.delete(id);
        resp.sendRedirect("/product");
    }

    private void showformsearch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("search.jsp").forward(req, resp);
    }

    private void search(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        List<Product> list = service.search(name);
        req.setAttribute("list", list);
        req.getRequestDispatcher("/search.jsp").forward(req, resp);
    }
}
