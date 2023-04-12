<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.UnknownServiceException" %>
<%@ page import="classes.Users" %><%--
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
<div class="text mt-5">
    <h4>
        Hello you in <%=nameShop%>
    </h4>
    <h6>
        This your profile page
    </h6>
</div>

</body>
</html>
