<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="com.home.dto.Users" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>HomeKitchen Dashboard</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f4f6f9;
}

/* NAVBAR */

.navbar{
display:flex;
justify-content:space-between;
align-items:center;
padding:15px 60px;
background:linear-gradient(45deg,#ff5e00,#ff8c00);
color:white;
}

.logo{
font-size:22px;
font-weight:600;
}

.nav-links{
display:flex;
gap:25px;
}

.nav-links a{
text-decoration:none;
color:white;
}

/* HERO */

.hero{
padding:120px 80px;
color:white;
background:
linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),
url("https://images.unsplash.com/photo-1498837167922-ddd27525d352");
background-size:cover;
background-position:center;
}

/* GRID */

.food-grid{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:25px;
padding:50px 80px;
}

/* CARD */

.food-card{
background:white;
border-radius:15px;
overflow:hidden;
box-shadow:0 10px 20px rgba(0,0,0,0.1);
transition:0.3s;
}

.food-card:hover{
transform:translateY(-8px);
}

.food-card img{
width:100%;
height:150px;
object-fit:cover;
}

.food-info{
padding:15px;
}

.price{
color:#ff5e00;
font-weight:600;
}

.add-btn{
display:inline-block;
margin-top:8px;
padding:8px 15px;
background:linear-gradient(45deg,#ff5e00,#ff8c00);
color:white;
text-decoration:none;
border-radius:6px;
}

</style>

</head>

<body>

<%
Users user = (Users)session.getAttribute("us");
String name = (user!=null) ? user.getName() : "Guest";
%>

<div class="navbar">

<div class="logo">🍽 HomeKitchen</div>

<div class="nav-links">
<a href="#">Home</a>
<a href="FoodList">Menu</a>
<a href="ViewCart">Cart</a>
<a href="OrderHistory">Orders</a>
<a href="LogoutServlet">Logout</a>
</div>

</div>

<div class="hero">
<h1>Welcome to HomeKitchen</h1>
<h2>Hello <%= name %> 👋</h2>
</div>

<div class="food-grid">

<div class="food-card">
<img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd">
<div class="food-info">
<h3>Chicken Burger</h3>
<div class="price">₹199</div>
<a href="customer/AddToCart?fid=1" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1600891964599-f61ba0e24092">
<div class="food-info">
<h3>Pizza</h3>
<div class="price">₹299</div>
<a href="customer/AddToCart?fid=2" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<a href="customer/AddToCart?fid=3" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1551782450-a2132b4ba21d">
<div class="food-info">
<h3>French Fries</h3>
<div class="price">₹149</div>
<a href="customer/AddToCart?fid=4" class="add-btn">Add to Cart</a>
</div>
</div>

</div>

</body>
</html>
