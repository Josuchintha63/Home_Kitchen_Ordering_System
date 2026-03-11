<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<style>
*{
margin:0;
padding:0;
box-sizing:border-box;
font-family: Arial, sans-serif;
}

body{
height:100vh;
background:#f3f3f3;
display:flex;
justify-content:center;
align-items:center;
}

/* main layout */

.main{
display:flex;
align-items:center;
gap:70px;
}

/* login card */

.container{
width:350px;
background:white;
padding:35px;
border-radius:25px;
box-shadow:0 10px 30px rgba(0,0,0,0.1);
}

/* tabs */

.tabs{
display:flex;
background:#eee;
border-radius:30px;
overflow:hidden;
margin-bottom:20px;
}

.tabs a{
flex:1;
text-align:center;
padding:10px;
text-decoration:none;
color:black;
font-weight:bold;
}

.active{
background:#ff5e3a;
color:white !important;
border-radius:30px;
}

/* inputs */

input{
width:100%;
padding:12px;
margin:10px 0;
border-radius:12px;
border:1px solid #ddd;
font-size:14px;
}

input:focus{
border-color:#ff5e3a;
outline:none;
}

/* remember + forgot */

.row{
display:flex;
justify-content:space-between;
font-size:13px;
margin-top:5px;
}

/* button */

button{
width:100%;
padding:12px;
background:#ff5e3a;
border:none;
color:white;
font-size:16px;
border-radius:30px;
cursor:pointer;
margin-top:15px;
}

button:hover{
background:#ff3b1f;
}

/* chef image */

.chef img{
width:300px;
}

</style>
</head>

<body>

<div class="main">

<!-- login card -->

<div class="container">

<div class="tabs">
<a href="Register.jsp">Register</a>
<a class="active">Log In</a>
</div>

<form action="Login" method="post">

<input type="text" name="uname" placeholder="Email">

<input type="password" name="pass" placeholder="Password">

<div class="row">
<label><input type="checkbox"> Remember Me</label>
<a href="#">Forgot Password?</a>
</div>

<button type="submit">Log In</button>

</form>

</div>

<!-- chef illustration -->

<div class="chef">
<img src="./images/chef.png">
</div>

</div>

</body>
</html>