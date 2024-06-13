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
<h2>商品列表</h2>
<table>
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
            <td><a href="add-to-cart?id=<%=product.getId()%>">添加到购物车</a></td>
        </tr>



    <% }
    }
    %>
</table>
</body>
</html>
