<%@page import="com.example.demo.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Welcome
<%User u = (User)session.getAttribute("userobj"); %>
Welcome to your account <%=u.getUsername() %> !!!!

</body>
</html>