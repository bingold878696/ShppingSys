<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>管理员登录</title>
    <meta charset="UTF-8">
</head>
<body>
<h2>管理员登录</h2>
<form action="adminLogin" method="post">
    <label for="username">用户名:</label>
    <input type="text" id="username" name="username" required><br><br>
    <label for="password">密码:</label>
    <input type="password" id="password" name="password" required><br><br>
    <button type="submit">登录</button>
</form>
</body>
</html>
