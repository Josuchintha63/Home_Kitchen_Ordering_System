<%@ page import="java.util.*, com.home.dto.Order" %>

<!DOCTYPE html>
<html>
<head>
    <title>All Orders</title>
</head>
<body>

<h2>All Orders</h2>

<table border="1" cellpadding="10">
<tr>
    <th>Order ID</th>
    <th>User ID</th>
    <th>Total Amount</th>
    <th>Status</th>
</tr>

<%
List<Order> orders = (List<Order>) request.getAttribute("orders");

if(orders != null){
    for(Order o : orders){
%>
<tr>
    <td><%=o.getOrder_id()%></td>
    <td><%=o.getUser_id()%></td>
    <td><%=o.getTotal_amount()%></td>
    <td><%=o.getStatus()%></td>
</tr>
<%
    }
}
%>

</table>

<br>
<a href="dashboard">⬅ Back to Dashboard</a>

</body>
</html>