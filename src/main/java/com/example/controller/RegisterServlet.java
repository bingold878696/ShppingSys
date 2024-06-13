package main.java.com.example.controller;

import main.java.com.example.dao.UserDao;
import main.java.com.example.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        if (username == null || password == null || email == null) {
            // 如果任何一个字段为空，重定向回注册页面
            response.sendRedirect("register.jsp");
            return;
        }

        User user = new User(username, password, email);
        UserDao userDao = new UserDao();
        userDao.registerUser(user);

        response.sendRedirect("login.jsp");
    }
}
