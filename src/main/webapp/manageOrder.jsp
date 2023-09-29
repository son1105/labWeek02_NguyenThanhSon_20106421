<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/9/2023
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<div class="container d-flex flex-column bg-dark w-100">
    <div>
        <table class="table table-hover table-bordered text-center">
            <thead class="table-info">
            <tr>
                <th>Order Id</th>
                <th>Order Date</th>
                <th>Employee Id</th>
                <th>Customer Id</th>
                <th colspan="2"><a href="" class="link-info">Insert</a></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>2002-05-11</td>
                <td>1</td>
                <td>1</td>
                <td><a href="" class="link-info">Delete</a></td>
                <td><a href="" class="link-info">Update</a></td>
            </tr>
            <tr>
                <td>2</td>
                <td>2002-05-28</td>
                <td>2</td>
                <td>2</td>
                <td><a href="" class="link-info">Delete</a></td>
                <td><a href="" class="link-info">Update</a></td>
            </tr>
            </tbody>
        </table>
    </div>
    <div>
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
    <div>
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
    <div>
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
</div>
</body>
</html>
