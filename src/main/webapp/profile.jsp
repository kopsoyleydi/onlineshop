<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.UnknownServiceException" %>
<%@ page import="classes.Users" %>
<%@ page import="classes.DBManager" %><%--
  Created by IntelliJ IDEA.
  User: omyrz
  Date: 11.04.2023
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Profile</title>
    <%@include file="head.jsp"%>
    <link rel="stylesheet" href="css/profile.css">
</head>
<body>
<%@include file="header.jsp"%>
<%
    Users users = (Users) request.getAttribute("user");
%>
<div class="text mt-5">
    <h4>
        Hello you in <%=nameShop%><br>
    </h4>
    <h6>
        This your profile page
    </h6>
    <div class="main">
    <div class="space">
    </div>
    <div class="image">
        <img src="img/unnamed.jpg" id="one" width="200px">
    </div>
    <div class="text-pro">
        <h4>Your email: <%=users.getEmail()%></h4>
        <h4>Your full name: <%=users.getFullName()%></h4>
    </div>
    <div class="space"></div>
</div>
</div>

</body>
</html>
