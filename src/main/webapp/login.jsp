<%--
  Created by IntelliJ IDEA.
  User: omyrz
  Date: 11.04.2023
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign in</title>
    <%@include file="head.jsp"%>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<%@include file="header.jsp"%>
<div class="container">
    <div class="login-title mt-3">
        <h4>
            Sign in
        </h4>
    </div>
    <%
        String error = request.getParameter("error");
        if(error != null){
    %>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        Something went wrong!!!
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <%
        }

    %>
    <form action="/LoginServlet" method="post" class="form mt-3">
        <label class="mt-2">Email</label>
        <input type="email" class="form-control" name="email" placeholder="example@gmail.com">
        <label class="mt-2">Password</label>
        <input type="password" class="form-control" name="password">
        <button class="btn btn-success mt-2">Log in</button>
    </form>
</div>
</body>
</html>
