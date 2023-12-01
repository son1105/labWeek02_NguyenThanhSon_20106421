<%@ page import="java.util.List" %>
<%@ page import="vn.edu.iuh.fit.backend.entities.Product" %>
<%@ page import="vn.edu.iuh.fit.frontend.models.ProductModel" %>
<%@ page import="vn.edu.iuh.fit.backend.enums.ProductStatus" %><%--
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

        function loadDataUpdate(e) {
            let td = e.parentElement.parentElement.getElementsByTagName("td");
            document.getElementById("up_product_id").value = td[0].textContent
            document.getElementById("up_product_name").value = td[1].textContent
            document.getElementById("up_product_unit").value = td[2].textContent
            document.getElementById("up_product_manufacturerName").value = td[3].textContent
            document.getElementById("up_product_description").value = td[4].textContent
            let status = td[6].textContent
            let option = document.getElementById("up_product_status").getElementsByTagName("option")
            for (let i = 0; i < option.length; i++) {
                if (status === option[i].textContent)
                    option[i].selected = true
            }
        }

        $(document).ready(function getAll() {
            let tableContent = '';
            const urlBacon = "http://localhost:8080/nts/api/products";
            (function () {
                $.ajax({
                    method: "GET",
                    url: urlBacon,
                    dataType: "json"
                })
                    .done(function (data) {
                        data.forEach(d => {
                            tableContent += '<tr>';
                            tableContent += "<td>" + d.id + "</td>"
                                + "<td>" + d.name + "</td>"
                                + "<td>" + d.unit + "</td>"
                                + "<td>" + d.manufacturerName + "</td>"
                                + "<td>" + d.description + "</td>"
                                + "<td><img src='data/image" + d.id + ".png' width='100' height='100'></td>"
                                + "<td>" + d.status + "</td>"
                                + "<td><Button class='btn btn-success' data-bs-toggle='modal' data-bs-target='#myModalUpdate' onclick='loadDataUpdate(this)'>Update</Button></td>"
                                + "<td><Button class='btn btn-danger'>Delete</Button></td>"
                                + "<td><Button class='btn btn-primary' type='submit' name='btn" + d.id + "'"
                                + "'>Add</Button></td>"
                                + "<td><Button class='btn btn-success' type='submit' value='"+d.id+"' style='width: 75px' name='chart'>Chart</Button></td>"
                            tableContent += '</tr>';
                        })
                        $("tbody").html(tableContent)
                    })
                    .fail(function () {
                        alert("no good");
                    });
            })()
        });
    </script>
</head>
<body>
<div class="container d-flex flex-column p-5 w-75 my-5">
    <form action="control">
        <Button class="btn" type="submit" style="width: 75px" name="cart"><img src="data/cart.png" alt="" height='50'>
        </Button>
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
                <th>Chart</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </form>
</div>

<div class="modal fade" id="myModalUpdate" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Update a Product</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="accountController" method="post">
                <div class="modal-body">
                    <div class="mb-3">
                        <label for="up_product_id" class="form-label">Product id:</label>
                        <input type="text" class="form-control" id="up_product_id" placeholder="Enter Product Id"
                               name="up_product_id" readonly value="">
                    </div>
                    <div class="mb-3">
                        <label for="up_product_name" class="form-label">Name:</label>
                        <input type="text" class="form-control" id="up_product_name" placeholder="Enter Product Name"
                               name="up_product_name" value="">
                    </div>
                    <div class="mb-3">
                        <label for="up_product_unit" class="form-label">Unit:</label>
                        <input type="text" class="form-control" id="up_product_unit"
                               placeholder="Enter Product Unit" name="up_product_unit"
                               value="">
                    </div>
                    <div class="mb-3">
                        <label for="up_product_manufacturerName" class="form-label">Manufacturer Name:</label>
                        <input type="text" class="form-control" id="up_product_manufacturerName"
                               placeholder="Enter Account Password" name="up_product_manufacturerName"
                               value="">
                    </div>
                    <div class="mb-3">
                        <label for="up_product_description" class="form-label">Description:</label>
                        <input type="text" class="form-control" id="up_product_description"
                               placeholder="Enter Account Phone"
                               name="up_product_description" value="">
                    </div>
                    <div class="mb-3">
                        <label for="up_product_status" class="form-label">Status:</label>
                        <select class="form-select" id="up_product_status" name="up_product_status">
                            <%
                                for (ProductStatus p : ProductStatus.values()) {
                            %>
                            <option><%=p.toString()%>
                            </option>
                            <% }
                            %>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="upAccount">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
