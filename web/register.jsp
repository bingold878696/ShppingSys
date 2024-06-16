<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>用户注册</title>
  <meta charset="UTF-8">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .register-container {
      background-color: #fff;
      padding: 20px 40px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 300px;
      text-align: center;
    }
    h2 {
      color: #333;
      margin-bottom: 20px;
    }
    input[type="text"], input[type="password"], input[type="email"] {
      width: calc(100% - 22px);
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 14px;
    }
    input[type="submit"] {
      background-color: #28a745;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 14px;
    }
    input[type="submit"]:hover {
      background-color: #218838;
    }
  </style>
</head>
<body>
<div class="register-container">
  <h2>用户注册</h2>
  <form action="register" method="post">
    <input type="text" name="username" placeholder="用户名" required><br>
    <input type="password" name="password" placeholder="密码" required><br>
    <input type="email" name="email" placeholder="邮箱" required><br>
    <input type="submit" value="注册">
  </form>
</div>
</body>
</html>
