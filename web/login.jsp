<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>用户登录</title>
    <meta charset="UTF-8">
</head>
<body>
<h2>用户登录</h2>
<form action="login" method="post">
    用户名: <input type="text" name="username"><br>
    密码: <input type="password" name="password"><br>
    <input type="submit" value="登录">

</form>
<button onclick="window.location.href = 'adminLogin.jsp'">管理员登陆</button>
</body>
</html>
