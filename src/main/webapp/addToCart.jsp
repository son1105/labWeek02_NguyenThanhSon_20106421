<%@ page import="vn.edu.iuh.fit.backend.entities.Product" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/10/2023
  Time: 11:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add To Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function reduceQuantity(){
            let value = document.getElementById('quantity').value;
            let quantity = Number(value);
            if(quantity>1){
                document.getElementById('quantity').setAttribute('value', quantity-1)
                let price = document.getElementById('price').textContent
                let textPrice = document.getElementById('textPrice').value;
                let newPrice = Number(price) - Number(textPrice)
                document.getElementById('price').innerHTML = newPrice
            }
        }
        function increaseQuantity(){
            let value = document.getElementById('quantity').value;
            let quantity = Number(value);
            document.getElementById('quantity').setAttribute('value', quantity+1)
            let price = document.getElementById('price').textContent
            let textPrice = document.getElementById('textPrice').value;
            let newPrice = Number(price) + Number(textPrice)
            document.getElementById('price').innerHTML = newPrice
        }
    </script>
</head>
<body>
<div class="container p-5 my-5">
    <%
        String name = session.getAttribute("productName").toString();
        String price = session.getAttribute("productPrice").toString();
        String img = session.getAttribute("productPath").toString();
    %>
    <form class="d-flex flex-row justify-content-center" action="control" method="post">

        <img src='<%=img%>' alt="" class="w-25">
        <div class="d-flex flex-column justify-content-between mx-3">
            <h3><%=name%></h3>
            <input type="hidden" value="<%=name%>" name="name">
            <p class="h4">Price: <span class="fw-bold" id="price"><%=price%></span></p>
            <input type="hidden" id="textPrice" value="<%=price%>">
            <div>
                <button class="btn btn-danger" type="button" onclick="reduceQuantity()">-</button>
                <input value="1" id="quantity" readonly style="width: 10%; text-align: center" name="quantity">
                <button class="btn btn-success" type="button" onclick="increaseQuantity()">+</button>
            </div>
            <button class="btn btn-primary" type="submit" name="addToCart">Thêm vào giỏ hàng</button>
        </div>
    </form>
</div>
</body>
</html>
