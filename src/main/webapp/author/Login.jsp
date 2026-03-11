<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family: Arial, sans-serif;
}

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(to right,#f3f3f3,#e6e6e6);
}

/* main layout */

.main{
display:flex;
align-items:center;
gap:80px;
}

/* chef image */

.chef img{
width:350px;
}

/* login card */

.container{
width:350px;
background:#f7f7f7;
padding:35px;
border-radius:20px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
}

/* heading */

h2{
text-align:center;
color:#ff5e3a;
margin-bottom:20px;
}

/* input boxes */

.inputBox{
margin-bottom:15px;
}

.inputBox input{
width:100%;
padding:12px;
border-radius:10px;
border:1px solid #ddd;
font-size:14px;
}

/* button */

button{
width:100%;
padding:12px;
background:#ff5e3a;
border:none;
color:white;
font-size:16px;
border-radius:25px;
cursor:pointer;
margin-top:10px;
}

button:hover{
background:#ff3b1f;
}

/* register link */

p{
text-align:center;
margin-top:15px;
}

a{
text-decoration:none;
color:#ff5e3a;
font-weight:bold;
}

</style>

</head>

<body>

<div class="main">

<!-- Chef Illustration -->

<div class="chef">
<img src="../images/chefLogin.png">
</div>

<!-- Login Form -->

<div class="container">

<h2>User Login</h2>

<form action="Login" method="post">

<div class="inputBox">
<input type="text" name="uname" placeholder="Username">
</div>

<div class="inputBox">
<input type="password" name="pass" placeholder="Password">
</div>

<button type="submit">Login</button>

</form>

<p>New user? <a href="Register.jsp">Register</a></p>

</div>

</div>

</body>
</html>