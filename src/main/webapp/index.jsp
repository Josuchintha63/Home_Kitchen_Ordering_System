<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Flavours Restaurant</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{
background:#f4f4f4;
}

/* NAVBAR */

.navbar{
height:80px;
background:#e6d2c3;
display:flex;
align-items:center;
justify-content:space-between;
padding:0 70px;
border-radius:20px;
margin:10px;
}

.logo{
font-size:22px;
font-weight:bold;
color:#ff7a00;
}

.nav-links a{
margin:0 20px;
text-decoration:none;
color:#333;
font-size:16px;
}

.nav-right{
display:flex;
align-items:center;
gap:20px;
}

.cart{
font-size:22px;
position:relative;
}

.cart span{
position:absolute;
top:-6px;
right:-10px;
background:red;
color:white;
font-size:12px;
border-radius:50%;
padding:2px 6px;
}

.contact-btn{
background:#ff7a00;
color:white;
padding:10px 20px;
border-radius:25px;
text-decoration:none;
}

/* HERO SECTION */

.hero{
display:flex;
align-items:center;
justify-content:space-between;
padding:80px;
}

/* LEFT TEXT */

.hero-text{
width:45%;
}

.hero-text h4{
color:#ff7a00;
margin-bottom:10px;
}

.hero-text h1{
font-size:60px;
line-height:1.2;
color:#333;
}

.orange{
color:#ff7a00;
}

.hero-text p{
margin-top:20px;
color:#555;
}

.order-btn{
margin-top:30px;
padding:16px 40px;
background:#ff7a00;
border:none;
color:white;
border-radius:40px;
font-size:18px;
}

/* IMAGE SECTION */

.hero-image{
width:50%;
position:relative;
display:flex;
justify-content:center;
align-items:center;
}

.food-img{
width:520px;
z-index:1;
}

/* ORANGE CIRCLE BACKGROUND */

.splash{
position:absolute;
width:300px;
height:300px;
background:#ff7a00;
border-radius:50%;
top:40px;
right:120px;
opacity:0.25;
z-index:0;
}

/* FLOATING CARDS */

.cards{
position:absolute;
bottom:-60px;
left:50%;
transform:translateX(-50%);
display:flex;
gap:25px;
z-index:2;
}

.card{
background:white;
padding:18px;
border-radius:20px;
width:200px;
box-shadow:0 15px 30px rgba(0,0,0,0.15);
transition:0.3s;
}

.card:hover{
transform:translateY(-8px);
}

.card img{
width:100%;
border-radius:12px;
}

.card h3{
margin-top:10px;
font-size:16px;
}

.rating{
color:#ff7a00;
margin-top:5px;
}

.heart{
position:absolute;
top:10px;
right:10px;
font-size:18px;
}

</style>

</head>

<body>

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">🍽 FLAVOURS</div>

<div class="nav-links">
<a href="#">Home</a>
<a href="#">About Us</a>
<a href="#">Products</a>
<a href="#">Contact Us</a>
</div>

<div class="nav-right">

<div class="cart">🛒<span>1</span></div>

<a href="#" class="contact-btn">Contact Us</a>

</div>

</div>

<!-- HERO -->

<div class="hero">

<div class="hero-text">

<h4>WELCOME TO OUR RESTAURANT</h4>

<h1>
Your <span class="orange">Go-To</span> Spot <br>
For Great <span class="orange">Food</span> And <br>
Good <span class="orange">Times</span>
</h1>

<p>
Join us for delicious meals and memorable moments!
</p>

<button class="order-btn">Order Now</button>

</div>

<!-- IMAGE SIDE -->

<div class="hero-image">

<div class="splash"></div>

<img src="images/hero-foood.png" class="food-img">

<div class="cards">

<div class="card">

<div class="heart">♡</div>

<img src="https://images.unsplash.com/photo-1546069901-ba9599a7e63c">

<h3>Salad Special</h3>

<div class="rating">⭐ 5.0</div>

</div>

<div class="card">

<div class="heart">♡</div>

<img src="https://images.unsplash.com/photo-1504674900247-0877df9cc836">

<h3>Good For Health</h3>

<div class="rating">⭐ 5.0</div>

</div>

</div>

</div>

</div>

</body>
</html>
