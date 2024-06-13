<%--
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
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h2>管理员后台</h2>

<h3>商品管理</h3>
<table border="1">
    <%
        List<Product> productslist = (List<Product>) request.getAttribute("products");
        if (productslist != null && !productslist.isEmpty()) {
            for (Product product: productslist) {
    %>
    <tr>
        <th>商品名称</th>
        <th>描述</th>
        <th>价格</th>
        <th>库存</th>
        <th>操作</th>
    </tr>

        <tr>
            <td><%=product.getName()%></td>
            <td><%=product.getDescription()%></td>
            <td><%=product.getPrice()%></td>
            <td><%=product.getQuantity()%></td>
            <td>
                <a href="deleteProduct?id=<%=product.getId()%>">删除</a>
            </td>
        </tr>
    <% }
    }
            %>

</table>
<br>
<a href="addProduct.jsp">添加商品</a>

<h3>用户管理</h3>
<table border="1">
    <tr>
        <th>用户名</th>
        <th>邮箱</th>
        <th>操作</th>
    </tr>
    <% List<User> userList = (List<User>) request.getAttribute("users");
        if (userList != null && !userList.isEmpty()) {
            for (User user: userList) {
    %>
        <tr>
            <td><%=user.getUsername()%></td>
            <td><%=user.getEmail()%></td>
            <td>
                <a href="deleteUser?id=<%=user.getUsername()%>">删除</a>
            </td>
        </tr>
    <% }
    }
        %>
</table>
</body>
</html>
--%>




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
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<h2>管理员后台</h2>

<h3>商品管理</h3>
<table border="1">
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
        <td><%=product.getPrice()%></td>
        <td><%=product.getQuantity()%></td>
        <td>
            <a href="deleteProduct?id=<%=product.getId()%>">删除</a>
        </td>
    </tr>
    <% }
    } else { %>
    <tr>
        <td colspan="5">没有商品</td>
    </tr>
    <% } %>
</table>
<br>
<a href="addProduct.jsp">添加商品</a>

<h3>用户管理</h3>
<table border="1">
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
        <td>
            <a href="deleteUser?username=<%=user.getUsername()%>">删除</a>
        </td>
    </tr>
    <% }
    } else { %>
    <tr>
        <td colspan="3">没有用户</td>
    </tr>
    <% } %>
</table>
</body>
</html>
