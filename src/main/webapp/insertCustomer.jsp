<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 28/9/2023
  Time: 12:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert Employee</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container p-5 d-flex justify-content-center">
    <form class="bg-info w-50 justify-content-center" action="">
        <div class="justify-content-center d-flex">
            <h5>Insert Customer</h5>
        </div>
        <div class="d-flex  my-2">
            <label class="form-label mx-2 w-25" for="name">Name:</label>
            <input class="form-control mx-2 w-75" type="text" name="name" id="name">
        </div>
        <div class="d-flex my-2">
            <label class="form-label mx-2 w-25" for="address">Address:</label>
            <input class="form-control mx-2 w-75" type="text" name="address" id="address">
        </div>
        <div class="d-flex my-2">
            <label class="form-label mx-2 w-25" for="email">Email:</label>
            <input class="form-control mx-2 w-75" type="text" name="email" id="email">
        </div>
        <div class="d-flex my-2">
            <label class="form-label mx-2 w-25" for="phone">Phone:</label>
            <input class="form-control mx-2 w-75" type="text" name="phone" id="phone">
        </div>
        <div class="d-flex my-2 justify-content-center">
            <button class="btn btn-primary mx-2" type="reset">Reset</button>
            <button class="btn btn-primary mx-2" type="submit">Insert</button>
        </div>
    </form>
</div>
</body>
</html>
