<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
</head>
<body>

<h2>User Registration</h2>

<form action="Register" method="post">

<label>User ID</label><br>
<input type="text" name="uid"><br><br>

<label>User Name</label><br>
<input type="text" name="uname"><br><br>

<label>Email</label><br>
<input type="text" name="email"><br><br>

<label>Password</label><br>
<input type="password" name="pass"><br><br>

<label>Role</label><br>
<select name="role">
<option value="CUSTOMER">Customer</option>
<option value="CHEF">Chef</option>
<option value="ADMIN">Admin</option>
</select><br><br>

<label>Phone</label><br>
<input type="text" name="phone"><br><br>

<input type="submit" value="Register">

</form>

<br>

<a href="Login.jsp">Already have an account? Login</a>

</body>
</html>