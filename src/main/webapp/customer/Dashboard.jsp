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
align-items:center;
gap:25px;
}

.nav-links a{
text-decoration:none;
color:white;
font-size:15px;
}

.cart-badge{
background:red;
color:white;
padding:2px 7px;
border-radius:50%;
font-size:12px;
margin-left:5px;
}

/* HERO SECTION */

.hero{

padding:120px 80px;

color:white;

background:
linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),
url("https://images.unsplash.com/photo-1498837167922-ddd27525d352");

background-size:cover;
background-position:center;

}

.hero h1{
font-size:45px;
margin-bottom:10px;
}

/* SEARCH */

.search{
margin-top:20px;
}

.search input{

padding:12px 15px;
border:none;
border-radius:25px;
width:350px;

}

/* SECTION TITLE */

.section-title{

padding:40px 80px 20px;
font-size:26px;

}

/* FOOD GRID */

.food-grid{

display:grid;

grid-template-columns:repeat(4,1fr);

gap:25px;

padding:0 80px 60px;

}

/* FOOD CARD */

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
height:180px;
object-fit:cover;
}

.food-info{
padding:15px;
}

.food-info h3{
margin-bottom:5px;
}

.price{
color:#ff5e00;
font-weight:600;
}

.rating{
color:gold;
font-size:14px;
margin:5px 0;
}

.add-btn{

display:inline-block;

margin-top:8px;

padding:8px 15px;

background:linear-gradient(45deg,#ff5e00,#ff8c00);

color:white;

text-decoration:none;

border-radius:6px;

font-size:14px;

}

</style>

</head>

<body>

<%
Users user = (Users)session.getAttribute("us");
String name = (user!=null) ? user.getName() : "Guest";
%>

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">🍽 HomeKitchen</div>

<div class="nav-links">

<a href="#">Home</a>

<a href="FoodList">Menu</a>

<a href="ViewCart">Cart <span class="cart-badge">2</span></a>

<a href="OrderHistory">Orders</a>

<a href="LogoutServlet">Logout</a>

</div>

</div>

<!-- HERO -->

<div class="hero">

<h1>Welcome to HomeKitchen</h1>

<h2>Hello <%= name %> 👋</h2>

<div class="search">
<input type="text" placeholder="🔍 Search your favourite food...">
</div>

</div>

<!-- POPULAR FOODS -->

<div class="section-title">
🔥 Popular Foods
</div>

<div class="food-grid">

<div class="food-card">
<img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd">
<div class="food-info">
<h3>Chicken Burger</h3>
<div class="price">₹199</div>
<div class="rating">⭐ 4.5</div>
<a href="AddToCart?id=1" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1600891964599-f61ba0e24092">
<div class="food-info">
<h3>Pizza</h3>
<div class="price">₹299</div>
<div class="rating">⭐ 4.7</div>
<a href="AddToCart?id=2" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1551782450-a2132b4ba21d">
<div class="food-info">
<h3>French Fries</h3>
<div class="price">₹149</div>
<div class="rating">⭐ 4.3</div>
<a href="AddToCart?id=4" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>


<div class="food-card">
<img src="https://images.unsplash.com/photo-1585032226651-759b368d7246">
<div class="food-info">
<h3>Noodles</h3>
<div class="price">₹179</div>
<div class="rating">⭐ 4.4</div>
<a href="AddToCart?id=3" class="add-btn">Add to Cart</a>
</div>
</div>

</div>

</body>
</html>
