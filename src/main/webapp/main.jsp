<%@ page import="java.util.ArrayList" %>
<%@ page import="classes.Items" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>BIT-LAB SHOP</title>
    <%@include file="head.jsp"%>
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
<%@include file="header.jsp"%>
<div class="main mt-5">
    <h3>
        WELCOME to <%=nameShop%>
    </h3>
    <h6>
        Electronic devices with high quality and service
    </h6>
</div>
<div class="cards">
    <div class="one mt-5">
        <%
            ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");

            if(items != null){
                for(Items it : items){

        %>
        <div class="card">
            <div class="card-body">
                <h5 class="card-header"><%=it.getName()%></h5>
                <h6 class="card-title"><%=it.getPrice()%>$</h6>
                <p class="card-text"><%=it.getDescription()%></p>
                <a href="#" class="btn btn-success" style="width: 100%"><%=buyNow%></a>
            </div>
        </div>
        <%
            }
        }
    %>
    </div>
</div>
</body>
</html>