<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>

<h2>User Login</h2>

<form action="Login" method="post">

<label>Username</label><br>
<input type="text" name="uname"><br><br>

<label>Password</label><br>
<input type="password" name="pass"><br><br>

<input type="submit" value="Login">

</form>

<br>

<a href="Register.jsp">New user? Register</a>

</body>
</html>