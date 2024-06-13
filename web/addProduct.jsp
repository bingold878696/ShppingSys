<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>添加商品</title>
    <meta charset="UTF-8">
</head>
<body>
<h2>添加商品</h2>
<form action="addProduct" method="post">
    <label for="name">商品名称:</label>
    <input type="text" id="name" name="name" required><br><br>
    <label for="description">商品描述:</label>
    <input type="text" id="description" name="description" required><br><br>
    <label for="price">价格:</label>
    <input type="text" id="price" name="price" required><br><br>
    <label for="quantity">库存:</label>
    <input type="text" id="quantity" name="quantity" required><br><br>
    <button type="submit">添加</button>
</form>
</body>
</html>
