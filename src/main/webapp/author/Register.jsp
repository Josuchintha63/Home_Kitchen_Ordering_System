<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>

body{
font-family: Arial;
background:#f5f5f5;
height:100vh;
display:flex;
justify-content:center;
align-items:center;
}



.main{
display:flex;
align-items:center;
gap:40px;
}



.chef img{
width:400px;
}


.container{
width:320px;
background:white;
padding:30px;
border-radius:20px;
box-shadow:0 5px 20px rgba(0,0,0,0.1);
}

h2{
text-align:center;
color:#ff5e3a;
margin-bottom:20px;
}



input,select{
width:100%;
padding:10px;
margin:8px 0;
border-radius:8px;
border:1px solid #ddd;
font-size:14px;
}

input:focus{
border-color:#ff5e3a;
outline:none;
}



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

/* link */

a{
text-decoration:none;
color:#ff5e3a;
font-size:14px;
}

p{
text-align:center;
}

</style>

</head>

<body>

<div class="main">

<!-- Chef Image -->
<div class="chef">
    <img src="../images/chef.png">
</div>

<!-- Registration Form -->

<div class="container">

<h2>Register</h2>

<form action="/author/Register" method="post">

<input type="text" name="uid" placeholder="User ID">

<input type="text" name="uname" placeholder="Full Name">

<input type="text" name="email" placeholder="Email Address">

<input type="password" name="pass" placeholder="Password">

<select name="role">
<option value="CUSTOMER">Customer</option>
<option value="CHEF">Chef</option>
<option value="ADMIN">Admin</option>
</select>

<input type="text" name="phone" placeholder="Phone Number">

<button type="submit">Registration</button>

</form>

<p>Already have an account? <a href="Login.jsp">Login</a></p>

</div>

</div>

</body>
</html>