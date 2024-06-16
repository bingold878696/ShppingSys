<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="main.java.com.example.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="main.java.com.example.dao.ProductDao" %>
<%@ page import="main.java.com.example.model.Admin" %>
<%@ page import="main.java.com.example.model.User" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员后台</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2, h3 {
            color: #333;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f8f8f8;
            color: #333;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        a:hover {
            text-decoration: underline;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px 0;
            font-size: 14px;
            cursor: pointer;
            text-align: center;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>管理员后台</h2>

    <h3>商品管理</h3>
    <table>
        <tr>
            <th>商品名称</th>
            <th>描述</th>
            <th>价格</th>
            <th>库存</th>
            <th>操作</th>
        </tr>
        <%
            List<Product> productslist = (List<Product>) request.getAttribute("products");
            if (productslist != null && !productslist.isEmpty()) {
                for (Product product : productslist) {
        %>
        <tr>
            <td><%=product.getName()%></td>
            <td><%=product.getDescription()%></td>
            <td>¥<%=product.getPrice()%></td>
            <td><%=product.getQuantity()%></td>
            <td><a href="deleteProduct?id=<%=product.getId()%>">删除</a></td>
        </tr>
        <% }
        } else { %>
        <tr>
            <td colspan="5">没有商品</td>
        </tr>
        <% } %>
    </table>
    <a href="addProduct.jsp" class="button">添加商品</a>

    <h3>用户管理</h3>
    <table>
        <tr>
            <th>用户名</th>
            <th>邮箱</th>
            <th>操作</th>
        </tr>
        <%
            List<User> userList = (List<User>) request.getAttribute("users");
            if (userList != null && !userList.isEmpty()) {
                for (User user : userList) {
        %>
        <tr>
            <td><%=user.getUsername()%></td>
            <td><%=user.getEmail()%></td>
            <td><a href="deleteUser?username=<%=user.getUsername()%>">删除</a></td>
        </tr>
        <% }
        } else { %>
        <tr>
            <td colspan="3">没有用户</td>
        </tr>
        <% } %>
    </table>
</div>
</body>
</html>
