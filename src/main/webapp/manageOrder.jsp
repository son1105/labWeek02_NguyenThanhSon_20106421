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
        $(document).ready(function getAll(){
            let tableContent = '';
            const urlBacon = "http://localhost:8080/nts/api/orders";
            (function() {
                $.ajax({
                    method: "GET",
                    url: urlBacon,
                    dataType: "json"
                })
                    .done(function(data) {
                        console.log(data)
                        data.forEach(d => {
                            tableContent += '<tr>';
                            tableContent += "<td>" + d.order_id + "</td>"
                                + "<td>" + d.orderDate + "</td>"
                                + "<td>" + d.employee.id + "</td>"
                                + "<td>" + d.customer.id + "</td>"
                                + "<td><Button class='btn btn-success' >Update</Button></td>"
                                + "<td><Button class='btn btn-danger'>Delete</Button></td>"
                            tableContent += '</tr>';
                        })
                        $("#order").html(tableContent)
                    })
                    .fail(function() {
                        alert("no good");
                    });
            })()
        });
    </script>
</head>
<body style="height: 100%;">
<div class="d-flex bg-dark w-100" style="height: 100%;">
    <div class="w-50 d-flex flex-column">
        <div style="overflow-y: scroll;" class="h-50">
            <table class="table table-hover table-bordered text-center h-50">
                <thead class="table-info">
                <tr>
                    <th>Order Id</th>
                    <th>Order Date</th>
                    <th>Employee Id</th>
                    <th>Customer Id</th>
                    <th colspan="2"><a href="" class="link-info">Insert</a></th>
                </tr>
                </thead>
                <tbody id="order">

                </tbody>
            </table>
        </div>
        <div style="overflow-y: scroll;" class="h-50">
            <table class="table table-hover table-bordered text-center">
                <thead class="table-info">
                <tr>
                    <th>Order Id</th>
                    <th>Product Id</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Note</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>10</td>
                    <td>100000</td>
                    <td>Trái cây</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="w-50 d-flex flex-column">
        <div style="overflow-y: scroll;" class="h-50">
            <table class="table table-hover table-bordered text-center">
                <thead class="table-info">
                <tr>
                    <th>Product Id</th>
                    <th>Name</th>
                    <th>Unit</th>
                    <th>Manufacture Name</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th colspan="2"><a href="" class="link-info">Insert</a></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Xoài</td>
                    <td>Kg</td>
                    <td>Việt Nam</td>
                    <td>Trái cây</td>
                    <td>Active</td>
                    <td><a href="" class="link-info">Delete</a></td>
                    <td><a href="" class="link-info">Update</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Cam</td>
                    <td>Kg</td>
                    <td>Việt Nam</td>
                    <td>Trái cây</td>
                    <td>Active</td>
                    <td><a href="" class="link-info">Delete</a></td>
                    <td><a href="" class="link-info">Update</a></td>
                </tr>
                </tbody>
            </table>
        </div>
        <div style="overflow-y: scroll;" class="h-50">
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
                    <th colspan="2"><a href="" class="link-info">Insert</a></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>Nguyễn Thanh Sơn</td>
                    <td>2002-05-11</td>
                    <td>Phú Yên</td>
                    <td>anhsonzzvn@gmail.com</td>
                    <td>0356448720</td>
                    <td>Active</td>
                    <td><a href="" class="link-info">Delete</a></td>
                    <td><a href="" class="link-info">Update</a></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Phạm Thanh Sơn</td>
                    <td>2002-05-28</td>
                    <td>Vũng Tàu</td>
                    <td>anhem@gmail.com</td>
                    <td>0375568993</td>
                    <td>Active</td>
                    <td><a href="" class="link-info">Delete</a></td>
                    <td><a href="" class="link-info">Update</a></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
