<%@page import="com.example.demo.entity.Url"%>
<%@page import="java.util.List"%>
<%@page import="com.example.demo.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
<style>
  body {
    background-color: #f8f9fa;
    padding: 20px;
  }
  .container {
    max-width: 600px;
    margin: auto;
    background-color: #ffffff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
  }
  .btn-custom {
    background-color: #007bff;
    color: white;
    border-radius: 5px;
    padding: 10px 20px;
    font-size: 16px;
  }
  .btn-custom:hover {
    background-color: #0056b3;
    color: white;
  }
  .form-group input {
    border-radius: 5px;
  }
</style>
</head>
<body>

<div class="container text-center">
  <h2>Welcome</h2>
  <% User u = (User) session.getAttribute("userobj"); %>
  <p>Welcome to your account, <%= u.getUsername() %>!</p>
  
  <button class="btn btn-custom" onclick="toggleForm()">Generate Code</button>
  
  <form id="generateForm" action="/generate" method="post" style="display: none;">
    <div class="form-group">
      <label for="link">Enter link</label>
      <input type="text" class="form-control" id="link" name="link" required>
    </div>
    <div class="form-group">
      <label for="code">Enter code</label>
      <input type="text" class="form-control" id="code" name="code" required>
    </div>
    <button type="submit" class="btn btn-primary">Generate</button>
  </form>
</div>
<table>
 <thead>
 <tr>
 <th>code</th>
 <th>link</th>
 </tr>
 </thead>
 <tbody>
 <%List<Url> urls = (List<Url>)request.getAttribute("urllist"); %>
 <%if(urls!=null){ %>
 <%for(Url url : urls){ %>
 <tr>
 <th><%=url.getCode() %></th>
 <th><%=url.getLink() %></th>
 </tr>
 <%} }%>
 </tbody>
</table>
<script>
function toggleForm() {
  var form = document.getElementById("generateForm");
  if (form.style.display === "none") {
    form.style.display = "block";
  } else {
    form.style.display = "none";
  }
}
</script>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
