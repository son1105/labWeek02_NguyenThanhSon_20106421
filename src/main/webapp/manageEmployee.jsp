<%@ page import="vn.edu.iuh.fit.frontend.models.EmployeeModel" %>
<%@ page import="vn.edu.iuh.fit.backend.entities.Employee" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/9/2023
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container d-flex flex-column p-5 bg-dark w-75 my-5">
    <table class="table table-hover table-bordered text-center">
        <thead class="table-info">
        <tr>
            <th>Employee Id</th>
            <th>Full name</th>
            <th>Date of birth</th>
            <th>Address</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Status</th>
            <th colspan="2"><a href="insertEmployee.jsp" class="link-info">Insert</a></th>
        </tr>
        </thead>
        <tbody>
        <%
            EmployeeModel employeeModel = new EmployeeModel();
            List<Employee> employees = employeeModel.getAll();
            for (Employee employee : employees){%>
        <tr>
            <td><%=employee.getId()%></td>
            <td><%=employee.getFullName()%></td>
            <td><%=employee.getDob()%></td>
            <td><%=employee.getAddress()%></td>
            <td><%=employee.getEmail()%></td>
            <td><%=employee.getPhone()%></td>
            <td><%=employee.getStatus()%></td>
            <td><a href="" class="link-info">Delete</a></td>
            <td><a href="" class="link-info">Update</a></td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>
