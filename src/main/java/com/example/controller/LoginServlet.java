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

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDao userDao = new UserDao();
        User user = userDao.validateUser(username, password);

        if (user != null) {
            //request.getSession().setAttribute("user", user);
            ProductDao productDao = new ProductDao();
            List<Product> products = productDao.getAllProducts();
            request.setAttribute("products", products);
            //response.sendRedirect("products.jsp");
            request.getRequestDispatcher("products.jsp").forward(request,response);
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
