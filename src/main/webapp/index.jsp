<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<style>
  body {
    background-color: #f8f9fa;
    text-align: center;
    padding-top: 50px;
  }
  .content {
    background-color: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
  }
  .content h2 {
    margin-bottom: 30px;
    color: #007bff;
  }
  .content p {
    color: #6c757d;
  }
  .btn-custom {
    background-color: #007bff;
    color: white;
    margin: 10px;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
  }
  .btn-custom:hover {
    background-color: #0056b3;
    color: white;
  }
</style>
</head>
<body>

<div class="container content">
  <h2>Welcome to URL Shortener</h2>
  <p>"URL shortening is a technique in which a long URL can be made substantially shorter and still direct users to the desired page. This is especially useful in a world where space and simplicity are valued."</p>
  <p>"With just a few clicks, you can transform a cumbersome link into a sleek, easy-to-share URL. Our service makes the process quick and effortless."</p>
  <p>"Shortened URLs are not only easier to share but also easier to remember, making your online experience smoother and more efficient."</p>
  
  <a href="login.jsp" class="btn btn-custom">Login</a>
  <a href="register.jsp" class="btn btn-custom">Register</a>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
