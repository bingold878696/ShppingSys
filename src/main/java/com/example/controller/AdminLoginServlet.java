package main.java.com.example.controller;

import main.java.com.example.dao.AdminDao;
import main.java.com.example.dao.ProductDao;
import main.java.com.example.dao.UserDao;
import main.java.com.example.model.Admin;
import main.java.com.example.model.Product;
import main.java.com.example.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminLoginServlet", urlPatterns = {"/adminLogin"})
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //AdminDao adminDao = new AdminDao();
        AdminDao admindminDao = new AdminDao();
        Admin admin = admindminDao.validateAdmin(username, password);
        System.out.println(admin);


        if (admin != null) {
            ProductDao productDao = new ProductDao();
            List<Product> products = productDao.getAllProducts();
            request.setAttribute("products", products);
            UserDao userDao = new UserDao();
            List<User> users = userDao.getAllUsers();

            request.setAttribute("users", users);
            //request.getSession().setAttribute("admin", admin);
            request.getRequestDispatcher("adminDashboard.jsp").forward(request,response);
            //response.sendRedirect("adminDashboard.jsp");
        } else {
            response.sendRedirect("adminLogin.jsp");
        }
    }
}
