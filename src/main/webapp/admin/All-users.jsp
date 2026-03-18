<%@ page import="java.util.*, com.home.dto.User" %>

<!DOCTYPE html>
<html>
<head>
    <title>All Users</title>
</head>
<body>

<h2>All Users</h2>

<table border="1" cellpadding="10">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Role</th>
</tr>

<%
List<User> users = (List<User>) request.getAttribute("users");

if(users != null){
    for(User u : users){
%>
<tr>
    <td><%=u.getId()%></td>
    <td><%=u.getName()%></td>
    <td><%=u.getEmail()%></td>
    <td><%=u.getRole()%></td>
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