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

@WebServlet(name = "AddProductServlet", urlPatterns = {"/addProduct"})
public class AddProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product product = new Product();
        product.setName(name);
        product.setDescription(description);
        product.setPrice(price);
        product.setQuantity(quantity);

        ProductDao productDao = new ProductDao();
        productDao.addProduct(product);

        UserDao userDao = new UserDao();


        List<Product> products = productDao.getAllProducts();
        List<User> users = userDao.getAllUsers();


        request.setAttribute("products", products);
        request.setAttribute("users", users);


        request.getRequestDispatcher("adminDashboard.jsp").forward(request, response);

    }
}



