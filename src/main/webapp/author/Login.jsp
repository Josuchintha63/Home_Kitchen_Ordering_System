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

/* page background */

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:#f5f5f5;
}

/* main layout */

.main{
display:flex;
align-items:center;
gap:90px;
}

/* chef section */

.chef{
position:relative;
width:420px;
display:flex;
justify-content:center;
align-items:center;
}

/* orange circle */

.chef::before{
content:"";
position:absolute;
width:330px;
height:330px;
background:#ffcc99;
border-radius:50%;
z-index:-1;
}

/* chef image */

.chef img{
width:330px;
}

/* login card */

.container{
width:350px;
background:white;
padding:35px;
border-radius:20px;
box-shadow:0 10px 25px rgba(0,0,0,0.15);
}

/* title */

h2{
text-align:center;
color:#ff5e3a;
margin-bottom:20px;
}

/* inputs */

input{
width:100%;
padding:12px;
margin:10px 0;
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

<!-- chef image -->

<div class="chef">
<img src="../images/chefLogin.png">
</div>

<!-- login form -->

<div class="container">

<h2>User Login</h2>

<form action="Login" method="post">

<input type="text" name="uname" placeholder="Username">

<input type="password" name="pass" placeholder="Password">

<button type="submit">Login</button>

</form>

<p>New user? <a href="Register.jsp">Register</a></p>

</div>

</div>

</body>
</html>