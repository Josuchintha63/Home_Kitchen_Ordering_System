<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
<%@ page import="com.home.dto.Food" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food List Menu</title>
</head>
<body>
<h2>Available Food Items</h2>

<%
List<Food> foods = (List<Food> )request.getAttribute("foods");

if(foods != null && !foods.isEmpty()){
    for(Food f : foods){
%>

<hr>
<img src="/Cloud_kitchen/<%= f.getImage_url() %>"width="250" height="200">
<h3><%= f.getFood_name() %></h3>

<p>Description : <%= f.getDescription() %></p>

<p>Price : ₹ <%= f.getPrice() %></p>
<a href="AddToCart?fid=<%= f.getFood_id() %>">🛒 Add To Cart</a>

<%
    }
}else{
%>

<h3>No Food Available</h3>

<%
}
%>


</body>
</html>