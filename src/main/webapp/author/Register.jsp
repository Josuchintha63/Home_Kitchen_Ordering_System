
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KitchenKart Register</title>

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:Poppins,sans-serif;
}

/* PAGE BACKGROUND */

body{
height:100vh;
display:flex;
justify-content:center;
align-items:center;
background:linear-gradient(135deg,#ff7a18 40%, #111 40%);
}

/* MAIN CONTAINER */

.main{
display:flex;
width:900px;
height:520px;
border-radius:20px;
overflow:hidden;
box-shadow:0 10px 40px rgba(0,0,0,0.5);
}

/* LEFT IMAGE */

.left{
flex:1;
background:url("https://images.unsplash.com/photo-1593560708920-61dd98c46a4e") center/cover;
}

/* RIGHT FORM */

.right{
flex:1;
background:#111;
padding:40px;
display:flex;
flex-direction:column;
justify-content:center;
border-left:3px solid #ff7a18;
}

/* TITLE */

h2{
color:#ff7a18;
text-align:center;
margin-bottom:25px;
font-size:32px;
}

/* INPUTS */

input,select{
width:100%;
padding:12px;
margin:10px 0;
border-radius:8px;
border:1px solid #333;
background:#1a1a1a;
color:white;
font-size:14px;
}

input:focus,select:focus{
outline:none;
border-color:#ff7a18;
}

/* BUTTON */

button{
width:100%;
padding:12px;
background:linear-gradient(45deg,#ff7a18,#ff4b2b);
border:none;
border-radius:30px;
color:white;
font-size:16px;
cursor:pointer;
margin-top:15px;
}

button:hover{
opacity:0.9;
}

/* LOGIN LINK */

p{
color:#bbb;
text-align:center;
margin-top:15px;
}

a{
color:#ff7a18;
text-decoration:none;
font-weight:bold;
}

</style>

</head>

<body>

<div class="main">

<div class="left"></div>

<div class="right">

<h2>Register</h2>

<form action="Register" method="post">

<input type="text" name="uid" placeholder="User ID">

<input type="text" name="uname" placeholder="Full Name">

<input type="email" name="email" placeholder="Email Address">

<input type="password" name="pass" placeholder="Password">

<select name="role">
<option value="CUSTOMER">Customer</option>
<option value="CHEF">Chef</option>
<option value="ADMIN">Admin</option>
</select>

<input type="text" name="phone" placeholder="Phone Number">

<button type="submit">Register</button>

</form>

<p>Already have an account? <a href="Login.jsp">Login</a></p>

</div>

</div>

</body>
</html>

