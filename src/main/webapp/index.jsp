<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KitchenKart</title>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Poppins,sans-serif;
scroll-behavior:smooth;
}

/* NAVBAR */

nav{
position:fixed;
top:0;
width:100%;
display:flex;
z-index:100;
}

.nav-left{
flex:1;
background:black;
padding:20px 80px;
display:flex;
align-items:center;
}

.logo{
font-size:32px;
font-weight:bold;
color:orange;
}

.nav-right{
flex:1;
background:black;
padding:20px 80px;
display:flex;
justify-content:flex-end;
align-items:center;
}

nav ul{
display:flex;
gap:30px;
list-style:none;
align-items:center;
}

nav ul li a{
color:white;
text-decoration:none;
font-size:18px;
cursor:pointer;
}

nav ul li a:hover{
color:#ff7a18;
}

/* LOGIN BUTTON */

.login-btn{
background:#ff7a18;
color:white;
padding:8px 18px;
border-radius:20px;
text-decoration:none;
font-size:16px;
}

.login-btn:hover{
background:#ff8c33;
}


/* HERO */

.hero{
display:flex;
height:100vh;
background:linear-gradient(to right,#ff7a18 50%, black 50%);
position:relative;
}

.left{
flex:1;
display:flex;
align-items:center;
justify-content:center;
position:relative;
}

.food-img{
position:absolute;
right:-120px;
width:360px;
border-radius:50%;
border:8px solid white;
box-shadow:0 0 0 15px rgba(255,255,255,0.3);
}

.right{
flex:1;
background:black;
color:white;
display:flex;
flex-direction:column;
justify-content:center;
padding-left:150px;
}

.right h1{
font-size:70px;
color:#ff7a18;
margin-bottom:10px;
}

.right p{
color:#aaa;
margin-bottom:20px;
}

.btn{
border:2px solid white;
padding:10px 25px;
border-radius:25px;
background:none;
color:white;
cursor:pointer;
width:180px;
}

/* SLIDER */

.slider-container{
position:absolute;
bottom:40px;
right:120px;
display:flex;
align-items:center;
gap:20px;
}

.arrow{
background:#ff7a18;
padding:12px;
border-radius:6px;
cursor:pointer;
color:white;
}

.slider-view{
width:380px;
overflow:hidden;
}

.slider-track{
display:flex;
gap:20px;
transition:transform 0.5s ease;
}

.food-card{
background:#222;
padding:10px 15px;
border-radius:12px;
display:flex;
align-items:center;
gap:10px;
min-width:160px;
color:white;
}

.food-card img{
width:50px;
height:50px;
border-radius:10px;
object-fit:cover;
}
.about-section{
background:#f7f7f7;
padding:150px 80px;
text-align:center;
position:relative;
overflow:hidden;
}

.about-section::before{
content:"";
position:absolute;
left:-150px;
top:-150px;
width:400px;
height:400px;
background:radial-gradient(circle,#ff7a18,transparent);
opacity:0.3;
}

.about-section::after{
content:"";
position:absolute;
right:-150px;
bottom:-150px;
width:400px;
height:400px;
background:radial-gradient(circle,#ff7a18,transparent);
opacity:0.3;
}
.about-section{
background:#f6f6f6;
padding:150px 80px;
text-align:center;
position:relative;
overflow:hidden;
}

.about-content h1{
font-size:60px;
color:#ff5a66;
margin-bottom:20px;
}

.about-content p{
font-size:22px;
color:#666;
max-width:700px;
margin:auto;
line-height:1.6;
}

/* floating food images */

.burger{
position:absolute;
left:120px;
top:200px;
width:220px;
}
.pizza{
position:absolute;
right:80px;
bottom:40px;
width:200px;
}

.tomato{
position:absolute;
left:100px;
bottom:120px;
width:60px;
}

.momo{
position:absolute;
right:200px;
top:120px;
width:200px;
}

/* stats */

.stats{
position:relative;
z-index:5;
}

.stats{
margin-top:90px;
background:white;
border-radius:20px;
padding:35px;
display:flex;
justify-content:space-around;
max-width:900px;
margin-left:auto;
margin-right:auto;
box-shadow:0 10px 30px rgba(0,0,0,0.08);
}

.stat h2{
font-size:36px;
color:#444;
}

.stat p{
color:#777;
}
.contact-section{
background:url("https://images.unsplash.com/photo-1555396273-367ea4eb4db5");
background-size:cover;
background-position:center;
padding:120px 80px;
color:white;
position:relative;
}

.contact-overlay{
background:rgba(0,0,0,0.7);
padding:80px;
}

.contact-title{
text-align:center;
font-size:45px;
margin-bottom:10px;
font-family:cursive;
}

.contact-sub{
text-align:center;
margin-bottom:50px;
color:#ddd;
}

.contact-wrapper{
display:flex;
justify-content:space-between;
gap:60px;
}

.contact-info h4{
margin-top:20px;
color:#ffcc80;
}

.contact-social{
margin-top:15px;
display:flex;
gap:15px;
}

.contact-social i{
background:#ffcc80;
color:black;
padding:10px;
cursor:pointer;
}

.contact-form{
width:450px;
display:flex;
flex-direction:column;
gap:15px;
}

.form-row{
display:flex;
gap:15px;
}

.contact-form input,
.contact-form textarea{
padding:12px;
background:transparent;
border:1px solid #ccc;
color:white;
}

.contact-form textarea{
height:120px;
}

.contact-btn{
background:#ffcc80;
border:none;
padding:12px;
font-weight:bold;
cursor:pointer;
}

.footer{
background:#f5f5f5;
padding:70px 120px;
}

.footer-container{
display:flex;
justify-content:space-between;
flex-wrap:wrap;
gap:40px;
}

.footer-brand h2{
color:#ff7a18;
margin-bottom:10px;
}

.footer-col h3{
margin-bottom:15px;
font-size:18px;
}

.footer-col ul{
list-style:none;
}

.footer-col ul li{
margin-bottom:10px;
color:#555;
cursor:pointer;
}

.footer-col ul li:hover{
color:#ff7a18;
}

.footer-social{
display:flex;
gap:15px;
font-size:20px;
margin-top:10px;
}

.footer-social i{
cursor:pointer;
color:#333;
}

.footer-social i:hover{
color:#ff7a18;
}

</style>
</head>

<body>

<!-- NAVBAR -->

<nav>

<div class="nav-left">
<div class="logo">KitchenKart</div>
</div>

<div class="nav-right">

<ul>
<li><a onclick="scrollToSection('home')">Home</a></li>
<li><a onclick="scrollToSection('about')">About</a></li>
<li><a onclick="scrollToSection('contact')">Contact</a></li>
<li><a href="author/Login.jsp" class="login-btn">Login</a></li>
</ul>

</div>

</nav>

<!-- HERO -->

<section class="hero" id="home">

<div class="left">

<img class="food-img"
src="https://images.unsplash.com/photo-1546069901-ba9599a7e63c">

</div>

<div class="right">

<h3>Are You Hungry ?</h3>
<h1>Don't Wait !</h1>
<p>Let's start to order food now</p>

<button class="btn">Check Out Menu</button>

</div>

<!-- SLIDER -->

<div class="slider-container">

<div class="arrow" id="prev">
<i class="fa-solid fa-chevron-left"></i>
</div>

<div class="slider-view">

<div class="slider-track" id="slider">

<div class="food-card">
<img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38">
<div>Pizza</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1550547660-d9450f859349">
<div>Burger</div>
</div>

<div class="food-card">
<img src="https://images.unsplash.com/photo-1555949258-eb67b1ef0ceb">
<div>Pasta</div>
</div>

<div class="food-card">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVPvcZIxeA9bZukK18CymY32OqFUTVbkKXgQ&s">
<div>Noodles</div>
</div>

</div>

</div>

<div class="arrow" id="next">
<i class="fa-solid fa-chevron-right"></i>
</div>

</div>

</section>

<section class="about-section" id="about">

<div class="about-content">

<h1>Better food for<br>more people</h1>

<p>
For over a decade, we've enabled our customers to discover new tastes,
delivered right to their doorstep
</p>

</div>

<!-- floating food images -->

<img src="https://cdn-icons-png.flaticon.com/512/5787/5787016.png" class="burger">

<img src="https://cdn-icons-png.flaticon.com/512/1404/1404945.png" class="pizza">

<img src="https://cdn-icons-png.flaticon.com/512/590/590685.png" class="tomato">

<img src="https://cdn-icons-png.flaticon.com/512/2515/2515263.png" class="momo">


<!-- stats box -->

<div class="stats">

<div class="stat">
<h2>3,00,000+</h2>
<p>restaurants</p>
</div>

<div class="stat">
<h2>800+</h2>
<p>cities</p>
</div>

<div class="stat">
<h2>3 billion+</h2>
<p>orders delivered</p>
</div>

</div>

</section>
<section class="contact-section" id="contact">

<div class="contact-overlay">

<h1 class="contact-title">Contact Us</h1>

<p class="contact-sub">
HOW TO GET IN TOUCH?
</p>

<div class="contact-wrapper">

<div class="contact-info">

<h4>ADDRESS</h4>
<p>123 Fifth Avenue, New York, NY 10160, USA</p>

<h4>PHONE NUMBER</h4>
<p>+1 910-626-85255</p>

<h4>EMAIL ADDRESS</h4>
<p>contact@tech.com</p>

<h4>FOLLOW ME</h4>

<div class="contact-social">

<i class="fa-brands fa-pinterest"></i>
<i class="fa-brands fa-facebook"></i>
<i class="fa-brands fa-twitter"></i>
<i class="fa-brands fa-google"></i>

</div>

</div>

<div class="contact-form">

<div class="form-row">

<input type="text" placeholder="Your Name">
<input type="email" placeholder="Your Email">

</div>

<input type="text" placeholder="Subject">

<textarea placeholder="Message"></textarea>

<button class="contact-btn">BOOK A TABLE</button>

</div>

</div>

</div>

</section>

<footer class="footer">

<div class="footer-container">

<div class="footer-brand">
<h2>KitchenKart</h2>
<p>© 2026 KitchenKart Limited</p>
</div>

<div class="footer-col">

<h3>Company</h3>

<ul>
<li>About Us</li>
<li>KitchenKart Corporate</li>
<li>Careers</li>
<li>Team</li>
<li>KitchenKart One</li>
</ul>

</div>

<div class="footer-col">

<h3>Contact Us</h3>

<ul>
<li>Help & Support</li>
<li>Partner With Us</li>
<li>Ride With Us</li>
</ul>

<h3 style="margin-top:20px;">Legal</h3>

<ul>
<li>Terms & Conditions</li>
<li>Cookie Policy</li>
<li>Privacy Policy</li>
</ul>

</div>

<div class="footer-col">

<h3>Available In</h3>

<ul>
<li>Bangalore</li>
<li>Hyderabad</li>
<li>Delhi</li>
<li>Mumbai</li>
<li>Pune</li>
</ul>

</div>

<div class="footer-col">

<h3>Social Links</h3>

<div class="footer-social">

<i class="fa-brands fa-linkedin"></i>
<i class="fa-brands fa-instagram"></i>
<i class="fa-brands fa-facebook"></i>
<i class="fa-brands fa-pinterest"></i>
<i class="fa-brands fa-twitter"></i>

</div>

</div>

</div>

</footer>
<script>

function scrollToSection(id){
document.getElementById(id).scrollIntoView({
behavior:"smooth"
});
}

/* SLIDER */

const slider=document.getElementById("slider");
const next=document.getElementById("next");
const prev=document.getElementById("prev");

let position=0;
const move=180;
const maxScroll=360;

next.onclick=()=>{
position+=move;
if(position>maxScroll) position=0;
slider.style.transform=`translateX(-${position}px)`;
}

prev.onclick=()=>{
position-=move;
if(position<0) position=maxScroll;
slider.style.transform=`translateX(-${position}px)`;
}

</script>

</body>
</html>