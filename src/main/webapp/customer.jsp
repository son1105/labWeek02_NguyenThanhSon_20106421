<%@ page import="vn.edu.iuh.fit.backend.entities.Customer" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/12/2023
  Time: 1:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container w-75 mt-4 p-5" style="background-color: cyan">
    <h1>Customer</h1>
    <%
        Customer customer = (Customer) session.getAttribute("customer");
    %>
    <h3>Id: <%=customer.getId()%></h3>
    <h3>Name: <%=customer.getName()%></h3>
    <h3>Email: <%=customer.getEmail()%></h3>
    <h3>Phone: <%=customer.getPhone()%></h3>
    <h3>Address: <%=customer.getAddress()%></h3>
</div>
</body>
</html>
