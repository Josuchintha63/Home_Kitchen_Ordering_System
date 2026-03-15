<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.home.dto.Order" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>Chef Orders</h2>
<form action="Chef-orders" method="post">
<table border="1">

<tr>
<th>Order Item ID</th>
<th>Order ID</th>
<th>Food ID</th>
<th>Quantity</th>
<th>Price</th>
</tr>
<% 
List<Order> orders = (List<Order>)request.getAttribute("orders");
if(orders != null){
    for(Order o : orders){

%>

<tr>
<td><%=o.getOrder_item_id()%></td>
<td><%=o.getOrder_id()%></td>
<td><%=o.getFood_id()%></td>
<td><%=o.getQuantity()%></td>
<td><%=o.getPrice()%></td>
</tr>

<% } %>
<% } %>

</table>
</form>
</body>
</html>