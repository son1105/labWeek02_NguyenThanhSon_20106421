<%@ page import="vn.edu.iuh.fit.frontend.models.CustomerModel" %>
<%@ page import="vn.edu.iuh.fit.backend.entities.Customer" %>
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
    <title>Manage Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        $(document).ready(function getAll(){
            let tableContent = '';
            const urlBacon = "http://localhost:8080/nts/api/customers";
            (function() {
                $.ajax({
                    method: "GET",
                    url: urlBacon,
                    dataType: "json"
                })
                    .done(function(data) {
                        data.forEach(d => {
                            tableContent += '<tr>';
                            tableContent += "<td>" + d.id + "</td>"
                                + "<td>" + d.name + "</td>"
                                + "<td>" + d.address + "</td>"
                                + "<td>" + d.email + "</td>"
                                + "<td>" + d.phone + "</td>"
                                + "<td><a href='' class='link-info'>Delete</a></td>"
                                + "<td><a href='' class='link-info'>Update</a></td>"
                            tableContent += '</tr>';
                        })
                        $("tbody").html(tableContent)
                    })
                    .fail(function() {
                        alert("no good");
                    });
            })()
        });
    </script>
</head>
<body>
<div class="container d-flex flex-column w-75 my-5">
    <table class="table table-hover table-bordered text-center">
        <thead class="table-info">
        <tr>
            <th>Customer Id</th>
            <th>Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Phone</th>
            <th colspan="2"><a href="insertCustomer.jsp" class="link-info">Insert</a></th>
        </tr>
        </thead>
        <tbody>
        <%
            CustomerModel customerModel = new CustomerModel();
            List<Customer> customers = customerModel.getAll();
            for (Customer customer : customers){%>
        <tr>
            <td><%=customer.getId()%></td>
            <td><%=customer.getName()%></td>
            <td><%=customer.getAddress()%></td>
            <td><%=customer.getEmail()%></td>
            <td><%=customer.getPhone()%></td>
            <td><a href="" class="link-info">Delete</a></td>
            <td><a href="" class="link-info">Update</a></td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
</body>
</html>
