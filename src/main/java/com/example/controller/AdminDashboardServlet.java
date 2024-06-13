/*package main.java.com.example.controller;

import main.java.com.example.dao.ProductDao;
import main.java.com.example.dao.UserDao;
import main.java.com.example.model.Product;
import main.java.com.example.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/adminDashboard")
public class AdminDashboardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao productDao = new ProductDao();
        UserDao userDao = new UserDao();

        List<Product> products = productDao.getAllProducts();
        List<User> users = userDao.getAllUsers();

        request.setAttribute("products", products);
        request.setAttribute("users", users);

        request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);
    }
}*/


package main.java.com.example.controller;

import main.java.com.example.dao.ProductDao;
import main.java.com.example.dao.UserDao;
import main.java.com.example.model.Product;
import main.java.com.example.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminDashboardServlet", urlPatterns = {"/adminDashboard"})
public class AdminDashboardServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductDao productDao = new ProductDao();
        UserDao userDao = new UserDao();

        List<Product> products = productDao.getAllProducts();
        List<User> users = userDao.getAllUsers();

        request.setAttribute("products", products);
        request.setAttribute("users", users);

        request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);
    }
}

