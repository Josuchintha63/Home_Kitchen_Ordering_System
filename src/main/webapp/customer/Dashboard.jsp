<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.home.dto.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Kitchen - Customer Dashboard</title>

<style>

body{
font-family: Arial, sans-serif;
background:#f4f6f9;
display:flex;
flex-direction:column;
align-items:center;
justify-content:center;
height:100vh;
}

h1{
margin-bottom:10px;
}

.container{
margin-top:30px;
display:flex;
flex-direction:column;
gap:15px;
}

.btn{
text-decoration:none;
padding:12px 25px;
background:#ff6b35;
color:white;
font-size:16px;
border-radius:8px;
text-align:center;
transition:0.3s;
}

.btn:hover{
background:#e65c2f;
transform:scale(1.05);
}

.logout{
background:#444;
}

.logout:hover{
background:#222;
}

</style>
</head>

<body>

<%
Users user = (Users)session.getAttribute("us");
String name = (user!=null) ? user.getName() : "Guest";
%>

<h1>🍽 Welcome to HomeKitchen 🏡</h1>
<h2>Hello <%= name %> 👋</h2>

<div class="container">

<a href="FoodList" class="btn">🍔 View MenuCard</a>

<a href="ViewCart" class="btn">🛒 My Cart</a>

<a href="OrderHistory" class="btn">🚚 My Orders</a>

<a href="LogoutServlet" class="btn logout">🔐 Logout</a>

</div>

</body>
</html>