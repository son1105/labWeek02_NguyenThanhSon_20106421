<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/9/2023
  Time: 12:20 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Product</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
<div class="container p-5 d-flex justify-content-center">
    <form class="bg-info w-50 justify-content-center" action="control" method="post">
        <div class="justify-content-center d-flex">
            <h5>Insert Product</h5>
        </div>
        <div class="d-flex  my-2">
            <label class="form-label mx-2 w-25" for="product_name">Name:</label>
            <input class="form-control mx-2 w-75" type="text" name="product_name" id="product_name">
        </div>
        <div class="d-flex my-2">
            <label class="form-label mx-2 w-25" for="unit">Unit:</label>
            <input class="form-control mx-2 w-75" type="text" name="unit" id="unit">
        </div>
        <div class="d-flex my-2">
            <label class="form-label mx-2 w-25" for="manufacture_name">Manufacture Name:</label>
            <input class="form-control mx-2 w-75" type="text" name="manufacture_name" id="manufacture_name">
        </div>
        <div class="d-flex my-2">
            <label class="form-label mx-2 w-25" for="description">Description:</label>
            <input class="form-control mx-2 w-75" type="text" name="description" id="description">
        </div>
        <div class="d-flex my-2 justify-content-center">
            <button class="btn btn-primary mx-2" type="reset">Reset</button>
            <button class="btn btn-primary mx-2" type="submit" name="insertProduct">Insert</button>
        </div>
    </form>
</div>
</body>
</html>
