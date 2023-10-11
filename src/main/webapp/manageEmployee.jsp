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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        $(document).ready(function getAll(){
            let tableContent = '';
            const urlBacon = "http://localhost:8080/nts/api/employees";
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
                                + "<td>" + d.fullName + "</td>"
                                + "<td>" + d.dob + "</td>"
                                + "<td>" + d.address + "</td>"
                                + "<td>" + d.email + "</td>"
                                + "<td>" + d.phone + "</td>"
                                + "<td>" + d.status + "</td>"
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
        </tbody>
    </table>
</div>
</body>
</html>
