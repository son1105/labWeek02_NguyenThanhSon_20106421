<%@ page import="vn.edu.iuh.fit.backend.entities.Employee" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/12/2023
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container w-75 mt-4 p-5" style="background-color: cyan">
    <h1>Employee</h1>
    <%
        Employee employee = (Employee) session.getAttribute("employee");
    %>
    <h3>Id: <%=employee.getId()%></h3>
    <h3>Name: <%=employee.getFullName()%></h3>
    <h3>Date Of Birth: <%=employee.getDob()%></h3>
    <h3>Email: <%=employee.getEmail()%></h3>
    <h3>Phone: <%=employee.getPhone()%></h3>
    <h3>Address: <%=employee.getAddress()%></h3>
    <h3>Status: <%=employee.getStatus()%></h3>
</div>
</body>
</html>
