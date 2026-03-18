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
padding:100px 80px;
color:white;
background:
linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),
url("https://images.unsplash.com/photo-1498837167922-ddd27525d352");
background-size:cover;
background-position:center;
}

.hero h1{
font-size:42px;
margin-bottom:10px;
}

/* SECTION TITLE */

.section-title{
padding:40px 80px 20px;
font-size:26px;
}

/* GRID */

.food-grid{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:25px;
padding:0 80px 60px;
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
height:170px;
object-fit:cover;
}

.food-info{
padding:15px;
}

.price{
color:#ff5e00;
font-weight:600;
}

/* FOOTER */

.footer{
background:#111;
color:white;
margin-top:60px;
}

.footer-container{
display:grid;
grid-template-columns:repeat(4,1fr);
gap:40px;
padding:50px 80px;
}

.footer-box h3{
color:#ff7b00;
margin-bottom:15px;
}

.footer-box p{
font-size:14px;
line-height:1.7;
color:#ccc;
}

.footer-bottom{
text-align:center;
padding:20px;
background:#000;
border-top:1px solid rgba(255,255,255,0.1);
font-size:14px;
color:#aaa;
}

</style>

</head>

<body>

<%
Users user=(Users)session.getAttribute("us");
String name=(user!=null)?user.getName():"Guest";
%>

<!-- NAVBAR -->

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

<!-- HERO -->

<div class="hero">

<h1>Welcome to HomeKitchen</h1>

<h2>Hello <%= name %> 👋</h2>

</div>

<!-- OFFERS -->

<div class="section-title">
🎁 Today's Special Offers
</div>

<div class="food-grid">

<div class="food-card">
<img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd">
<div class="food-info">
<h3>Burger Combo</h3>
<p>Chicken burger with fries.</p>
<div class="price">₹199</div>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1600891964599-f61ba0e24092">
<div class="food-info">
<h3>Pizza Deal</h3>
<p>Buy one get 50% off.</p>
<div class="price">₹299</div>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a">
<div class="food-info">
<h3>Biryani Special</h3>
<div class="price">₹279</div>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1551782450-a2132b4ba21d">
<div class="food-info">
<h3>Snacks Combo</h3>
<div class="price">₹149</div>
</div>
</div>

</div>

<!-- CHEF SPECIAL -->

<div class="section-title">
👨‍🍳 Chef Specials
</div>

<div class="food-grid">

<div class="food-card">
<img src="https://assets.cntraveller.in/photos/6218cfdf6774879c067d3ece/1:1/w_1079,h_1079,c_limit/best%20biryani%20in%20pune%20lead.jpg">
<div class="food-info">
<h3>Chef Signature Biryani</h3>
<div class="price">₹349</div>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1600891964599-f61ba0e24092">
<div class="food-info">
<h3>Grilled Chicken</h3>
<div class="price">₹399</div>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1546069901-ba9599a7e63c">
<div class="food-info">
<h3>Veg Platter</h3>
<div class="price">₹299</div>
</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1578985545062-69928b1d9587">
<div class="food-info">
<h3>Lava Cake</h3>
<div class="price">₹199</div>
</div>
</div>

</div>

<!-- CUSTOMER REVIEWS -->

<div class="section-title">
⭐ Customer Reviews
</div>

<div class="food-grid">

<div class="food-card">
<div class="food-info">
<h3>Rohit</h3>
<p>⭐⭐⭐⭐⭐ Amazing food!</p>
</div>
</div>

<div class="food-card">
<div class="food-info">
<h3>Priya</h3>
<p>⭐⭐⭐⭐ Loved the pizza.</p>
</div>
</div>

<div class="food-card">
<div class="food-info">
<h3>Rahul</h3>
<p>⭐⭐⭐⭐⭐ Best biryani.</p>
</div>
</div>

<div class="food-card">
<div class="food-info">
<h3>Anjali</h3>
<p>⭐⭐⭐⭐ Great desserts.</p>
</div>
</div>

</div>

<!-- FOOTER -->

<footer class="footer">

<div class="footer-container">

<div class="footer-box">

<h3>🍽 HomeKitchen</h3>

<p>
Experience delicious homemade food prepared with fresh ingredients.
Enjoy a variety of cuisines and chef specials every day.
</p>

</div>

<div class="footer-box">

<h3>📍 Location</h3>

<p>HomeKitchen Restaurant</p>
<p>MG Road, Bangalore</p>

</div>

<div class="footer-box">

<h3>📞 Contact</h3>

<p>Phone : +91 9876543210</p>
<p>Email : support@homekitchen.com</p>

</div>

<div class="footer-box">

<h3>⏰ Opening Hours</h3>

<p>Monday – Friday</p>
<p>10:00 AM – 10:00 PM</p>

<p>Saturday – Sunday</p>
<p>9:00 AM – 11:00 PM</p>

</div>

</div>

<div class="footer-bottom">

<p>© 2026 HomeKitchen Restaurant | All Rights Reserved</p>

</div>

</footer>

</body>
</html>
