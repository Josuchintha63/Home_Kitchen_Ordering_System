<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KitchenKart</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

/* BACKGROUND */

body{

height:100vh;

display:flex;
align-items:center;
justify-content:space-between;

padding:0 100px;

background:
linear-gradient(to right, rgba(0,0,0,0.5), rgba(255,100,0,0.5)),
url("https://img.pikbest.com/wp/202344/assorted-an-assortment-of-various-fast-food-items-on-a-textured-gray-table_9906835.jpg!w700wp");

background-size:cover;
background-position:center;

color:white;

}

/* LEFT LANDING SECTION */

.hero{

max-width:520px;

}

.hero h1{

font-size:52px;
font-weight:600;

margin-bottom:15px;

}

.hero span{

color:#ff7b00;

}

.hero p{

font-size:16px;
color:#ddd;

margin-bottom:35px;

}

/* BUTTONS */

.hero-buttons{

display:flex;
gap:20px;

}

.btn{

padding:14px 28px;

border:none;
border-radius:30px;

font-size:14px;

cursor:pointer;

transition:0.3s;

}

.btn-menu{

background:#ff7b00;
color:white;

}

.btn-menu:hover{

transform:translateY(-3px);
box-shadow:0 10px 20px rgba(0,0,0,0.3);

}

.btn-about{

background:transparent;
border:2px solid white;
color:white;

}

.btn-about:hover{

background:white;
color:black;

}

/* LOGIN CARD */

.login-container{

width:360px;

background:rgba(255,255,255,0.92);

padding:40px;

border-radius:15px;

box-shadow:0 15px 40px rgba(0,0,0,0.5);

color:black;

}

/* TITLE */

.login-container h2{

text-align:center;
margin-bottom:10px;

}

/* SUBTITLE */

.subtitle{

text-align:center;
font-size:13px;
color:#777;
margin-bottom:25px;

}

/* INPUT */

.input-box{

width:100%;
padding:12px;

margin:10px 0;

border:none;
border-radius:8px;

background:#f3f3f3;

}

/* LOGIN BUTTON */

.login-btn{

width:100%;
padding:14px;

border:none;

border-radius:8px;

background:linear-gradient(45deg,#ff5e00,#ff8c00);

color:white;

font-size:16px;

cursor:pointer;

margin-top:10px;

transition:0.3s;

}

.login-btn:hover{

transform:scale(1.04);

}

/* REGISTER */

.register{

text-align:center;
margin-top:15px;
font-size:14px;

}

.register a{

color:#ff5e00;
text-decoration:none;

}

</style>
</head>

<body>

<!-- LANDING CONTENT -->

<div class="hero">

<h1>Welcome to <span>KitchenKart</span></h1>

<p>
Discover thousands of delicious recipes and order your favourite food instantly.
Fresh ingredients, tasty meals and quick delivery.
</p>

<div class="hero-buttons">

<button class="btn btn-menu">Explore Menu</button>

<button class="btn btn-about">About Us</button>

</div>

</div>


<!-- LOGIN CARD -->

<div class="login-container">

<h2>Login</h2>

<p class="subtitle">Access 30,000+ recipes</p>

<form action="Login" method="post">

<input type="text" name="uname" class="input-box" placeholder="Email Address" required>

<input type="password" name="pass" class="input-box" placeholder="Password" required>

<input type="submit" value="LOGIN" class="login-btn">

</form>

<div class="register">

New user? <a href="Register.jsp">Register</a>

</div>

</div>

</body>
</html>