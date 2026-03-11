<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>

<style>

body{
    font-family: Arial, sans-serif;

    background-image: url("../images/food-bg.jpg");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;

    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
}

.container{
    background: rgba(255,255,255,0.9);
    padding:30px;
    width:350px;
    border-radius:10px;
    box-shadow:0 0 15px black;
}

h2{
    text-align:center;
}

input,select{
    width:100%;
    padding:8px;
    margin-top:5px;
    margin-bottom:15px;
    border:1px solid #ccc;
    border-radius:5px;
}

input[type="submit"]{
    background:#ff5e62;
    color:white;
    border:none;
    cursor:pointer;
    font-size:16px;
}

input[type="submit"]:hover{
    background:#ff3b3f;
}

a{
    text-decoration:none;
    color:#ff5e62;
    font-weight:bold;
}

</style>

</head>

<body>

<div class="container">

<h2>User Registration</h2>

<form action="/author/Register" method="post">

<label>User ID</label>
<input type="text" name="uid">

<label>User Name</label>
<input type="text" name="uname">

<label>Email</label>
<input type="text" name="email">

<label>Password</label>
<input type="password" name="pass">

<label>Role</label>
<select name="role">
<option value="CUSTOMER">Customer</option>
<option value="CHEF">Chef</option>
<option value="ADMIN">Admin</option>
</select>

<label>Phone</label>
<input type="text" name="phone">

<input type="submit" value="Register">

</form>

<br>

<a href="Login.jsp">Already have an account? Login</a>

</div>

</body>
</html>