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
<div class="block">
    <div class="space">

    </div>
<div class="text">
        <%
            ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("items");

            if(items != null){
                for(Items it : items){

        %>
        <div class="card text-center" style="width: 300px">
            <div class="card-body">
                <h5 class="card-title"><%=it.getName()%></h5>
                <h4 class="card-text">
                    <%=it.getPrice()%>$
                </h4>
                <p class="card-text"><%=it.getDescription()%></p>
            </div>
            <a href="#" class="btn btn-success" style="width: 70%;">Buy Now</a>
        </div>
        <%
                }
            }
        %>
</div>
    <div class="space">

</div>
</div>
</body>
</html>