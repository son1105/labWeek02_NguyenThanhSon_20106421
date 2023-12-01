<%@ page import="vn.edu.iuh.fit.frontend.models.OrderModel" %>
<%@ page import="vn.edu.iuh.fit.backend.entities.Order" %>
<%@ page import="vn.edu.iuh.fit.backend.repositoris.OrderRepository" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/9/2023
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="height: 100%;">
<head>
    <title>Manage Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        $(document).ready(function getAll() {
            let tableContent = '';
            const urlBacon = "http://localhost:8080/nts/api/orders";
            (function () {
                $.ajax({
                    method: "GET",
                    url: urlBacon,
                    dataType: "json"
                })
                    .done(function (data) {
                        console.log(data)
                        data.forEach(d => {
                            tableContent += '<tr>';
                            tableContent += "<td>" + d.order_id + "</td>"
                                + "<td>" + d.orderDate + "</td>"
                                + "<td><button class='btn btn-link' type='submit' value='"+d.employee.id+"' name='viewEmployee'>" + d.employee.id + "</button></td>"
                                + "<td><button class='btn btn-link' type='submit' value='"+d.customer.id+"' name='viewCustomer'>" + d.customer.id + "</button></td>"
                                + "<td><Button class='btn btn-success' value='"+d.order_id+"' name='viewDetail'>View</Button></td>"
                            tableContent += '</tr>';
                        })
                        $("#order").html(tableContent)
                    })
                    .fail(function () {
                        alert("no good");
                    });
            })()
        });
    </script>
</head>
<body style="height: 100%;">
<div class="d-flex bg-dark container" style="height: 100%;">
    <form class="w-100" action="control">
        <div style="overflow-y: scroll;" class="w-100 h-100 p-5">
            <table class="table table-hover table-bordered text-center h-100">
                <thead class="table-info">
                <tr>
                    <th>Order Id</th>
                    <th>Order Date</th>
                    <th>Employee Id</th>
                    <th>Customer Id</th>
                    <th>View Detail</th>
                </tr>
                </thead>
                <tbody id="order">

                </tbody>
            </table>
        </div>
    </form>
</div>
</body>
</html>
