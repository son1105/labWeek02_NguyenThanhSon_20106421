<%@ page import="java.util.List" %>
<%@ page import="vn.edu.iuh.fit.backend.entities.Product" %>
<%@ page import="vn.edu.iuh.fit.frontend.models.ProductModel" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 27/9/2023
  Time: 1:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manage Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        $( document ).ready(function getAll(){
            let tableContent = '';
            const urlBacon = "http://localhost:8080/nts/api/products";
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
                                + "<td>" + d.unit + "</td>"
                                + "<td>" + d.manufacturerName + "</td>"
                                + "<td>" + d.description + "</td>"
                                + "<td><img src='data/image"+d.id+".png' width='100' height='100'></td>"
                                + "<td>" + d.status + "</td>"
                                + "<td><Button class='btn btn-success' >Update</Button></td>"
                                + "<td><Button class='btn btn-danger'>Delete</Button></td>"
                                + "<td><Button class='btn btn-primary' type='submit' name='btn"+d.id+"'" +
                                "'>Add</Button></td>"
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
<div class="container d-flex flex-column p-5 w-75 my-5">
    <form action="control">
        <Button class="btn" type="submit" style="width: 75px" name="cart"><img src="data/cart.png" alt="" height='50'></Button>
        <table class="table table-hover table-bordered text-center">
            <thead class="table-info">
            <tr>
                <th>Product Id</th>
                <th>Name</th>
                <th>Unit</th>
                <th>Manufacturer Name</th>
                <th>Description</th>
                <th>Image</th>
                <th>Status</th>
                <th colspan="2"><a href="insertProduct.jsp" class="link-info">Insert</a></th>
                <th>Add To Cart</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </form>
</div>
</body>
</html>
