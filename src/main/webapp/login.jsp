<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<style>
  body {
    background-color: #f8f9fa;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }
  .login-container {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
    max-width: 400px;
    width: 100%;
  }
  .login-container h2 {
    margin-bottom: 20px;
    color: #007bff;
  }
  .form-group input {
    border-radius: 5px;
  }
  .btn-custom {
    background-color: #007bff;
    color: white;
    margin-top: 10px;
    border-radius: 5px;
  }
  .btn-custom:hover {
    background-color: #0056b3;
    color: white;
  }
</style>
</head>
<body>

<div class="login-container">
  <h2>Login</h2>
  <form action="/login" method="post">
    <div class="form-group">
      <label for="email">Enter email</label>
      <input type="email" class="form-control" id="email" name="email" required>
    </div>
    <div class="form-group">
      <label for="password">Enter password</label>
      <input type="password" class="form-control" id="password" name="password" required>
    </div>
    <br>
    <button type="submit" class="btn btn-custom btn-block">Login</button>
    <br>
    Create Account..<a href="register.jsp">Register</a>
  </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
