<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.home.dto.Food" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Food Menu</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Poppins,sans-serif;
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

.nav-links a{
text-decoration:none;
color:white;
margin-left:20px;
font-size:15px;
}

/* MENU SECTION BACKGROUND */

.menu-section{

padding:40px 0;

background:
linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),
url("https://images.unsplash.com/photo-1504674900247-0877df9cc836");

background-size:cover;
background-position:center;

}

/* MENU TITLE */

.menu-title{
text-align:center;
font-size:38px;
font-weight:600;
margin-bottom:30px;
color:white;
}

/* GRID */

.food-container{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:25px;
padding:40px 80px;
}

/* FOOD CARD */

.food-card{
background:white;
border-radius:16px;
overflow:hidden;
box-shadow:0 8px 20px rgba(0,0,0,0.3);
transition:0.3s;
cursor:pointer;
}

.food-card:hover{
transform:scale(1.03);
box-shadow:0 10px 30px rgba(255,94,0,0.6);
}

/* IMAGE */

.food-img{
position:relative;
}

.food-img img{
width:100%;
height:200px;
object-fit:cover;
}

/* OFFER TAG */

.offer{
position:absolute;
bottom:10px;
left:10px;
background:black;
color:white;
font-size:13px;
padding:4px 8px;
border-radius:5px;
}

/* FOOD DETAILS */

.food-info{
padding:12px 15px;
text-align:left;
}

.food-name{
font-size:18px;
font-weight:600;
margin-bottom:5px;
}

.rating{
color:#008000;
font-size:14px;
margin-bottom:4px;
}

.desc{
font-size:13px;
color:#666;
margin-bottom:6px;
}

.price{
color:#ff5e00;
font-weight:600;
margin-bottom:8px;
}

/* BUTTON */

.cart-btn{
background:#ff5e00;
color:white;
padding:7px 12px;
border:none;
border-radius:5px;
cursor:pointer;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">🍽 HomeKitchen</div>

<div class="nav-links">
<a href="Dashboard.jsp">Dashboard</a>
<a href="FoodList">Menu</a>
<a href="ViewCart">Cart</a>
<a href="LogoutServlet">Logout</a>
</div>

</div>

<!-- MENU SECTION -->

<div class="menu-section">

<h1 class="menu-title">🍽 Explore Our Menu</h1>

<div class="food-container">

<%

List<Food> foods = (List<Food>)request.getAttribute("foods");

if(foods != null && !foods.isEmpty()){

for(Food f : foods){

%>

<div class="food-card">

<div class="food-img">

<img src="/Cloud_kitchen/<%= f.getImage_url() %>">

<div class="offer">60% OFF</div>

</div>

<div class="food-info">

<div class="food-name"><%= f.getFood_name() %></div>

<div class="rating">⭐ 4.2 • 25 mins</div>

<div class="desc"><%= f.getDescription() %></div>

<div class="price">₹ <%= f.getPrice() %></div>

<a href="AddToCart?fid=<%= f.getFood_id() %>">
<button class="cart-btn">Add To Cart</button>
</a>

</div>

</div>

<%

}

}else{

%>

<h3 style="text-align:center;color:white;">No Food Available</h3>

<%

}

%>

</div>

</div>

</body>
</html>
