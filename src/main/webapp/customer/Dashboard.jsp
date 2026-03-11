<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.home.dto.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Kitchen - Customer Dashboard</title>
</head>
<body>
<%
Users user = (Users)session.getAttribute("us");
String name = (user!=null) ? user.getName() : "Guest";
%>

    
                           
<h1>🍽 Welcome to HomeKitchen 🏡</h1>
<h1>Hello <%= name %> 👋</h1> 

<a href="FoodList">🍔 View MenuCard</a> <!-- FoodListServlet -->
<a href="ViewCart">🛒 My Cart</a>    <!-- -ViewCartServlet -->     <!-- -Inside We use AddtoCartServlet -->   <!-- -PlaceOrderServlet -->
<a href="OrderHistory">🚚 My Orders</a>  <!-- -OrderHistoryServlet -->
<a href="">🔐 Logout</a>      
</body>
</html>