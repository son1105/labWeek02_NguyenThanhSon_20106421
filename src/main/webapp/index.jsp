<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container d-flex flex-column p-5 bg-dark justify-content-center w-50 my-5" style="align-items: center;">
    <div class="d-flex w-75">
        <button class="btn btn-primary w-50 m-2"><a href="manageProduct.jsp" class="link-info">Manage Product</a></button>
        <button class="btn btn-success w-50 m-2"><a href="manageOrder.jsp" class="link-info">Manage Order</a></button>
    </div>
    <div class="d-flex w-75">
        <button class="btn btn-danger w-50 m-2"><a href="manageEmployee.jsp" class="link-info">Manage Employee</a></button>
        <button class="btn btn-light w-50 m-2"><a href="manageCustomer.jsp" class="link-info">Manage Customer</a></button>
    </div>
</div>
</body>
</html>