<%@ page import="main.java.com.example.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="main.java.com.example.dao.ProductDao" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>商品列表</title>
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
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 15px;
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
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            text-align: center;
            display: inline-block;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .button:hover {
            background-color: #0056b3;
        }
        .admin-out-button {
            background-color: #dc3545;
            color: white;
            padding: 10px 20px;
            text-align: center;
            display: inline-block;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 20px;
            display: block;
            width: 150px;
            margin-left: auto;
            margin-right: auto;
        }
        .admin-out-button:hover {
            background-color: #c82333;
        }
        .no-products {
            text-align: center;
            color: #888;
            font-size: 16px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>商品列表</h2>
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
                for (Product product: productslist) {
        %>
        <tr>
            <td><%=product.getName()%></td>
            <td><%=product.getDescription()%></td>
            <td>¥<%=product.getPrice()%></td>
            <td><%=product.getQuantity()%></td>
            <td><a href="add-to-cart?id=<%=product.getId()%>" class="button">添加到购物车</a></td>
        </tr>
        <%
            }
        } else {
        %>
        <tr>
            <td colspan="5" class="no-products">没有商品</td>
        </tr>
        <%
            }
        %>
    </table>
    <button class="admin-out-button" onclick="window.location.href = 'login.jsp'">退出登录</button>
</div>
</body>
</html>
