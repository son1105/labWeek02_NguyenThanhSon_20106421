<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="vn.edu.iuh.fit.frontend.models.ProductPriceModel" %>
<%@ page import="vn.edu.iuh.fit.frontend.models.ProductModel" %>
<%@ page import="vn.edu.iuh.fit.frontend.models.ProductImageModel" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 12/10/2023
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="height: 100%">
<head>
    <title>Cart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        function reduceQuantity(e){
            // get element parent then get element price
            let s = e.parentElement.getElementsByTagName('input')
            let quantity = Number(s[0].value);
            if(quantity>1){
                s[0].setAttribute('value', quantity-1)
                //get Element Price
                let p = e.parentElement.parentElement.parentElement.getElementsByTagName('td')[4].getElementsByTagName('p')[0]
                let price = p.textContent
                let newPrice = Number(price) - Number(price)/quantity
                p.innerHTML = newPrice+''
                //get element checkbox
                let input = e.parentElement.parentElement.parentElement.getElementsByTagName('td')[5].getElementsByTagName('input')[0]
                if(input.checked === true){
                    let total = document.getElementById('total').textContent
                    $('#total').html(Number(total) - Number(price)/quantity)
                    $('#totalHidden').val(Number(total) - Number(price)/quantity)
                }
            }
        }
        function increaseQuantity(e) {
            let s = e.parentElement.getElementsByTagName('input')
            let quantity = Number(s[0].value);
            s[0].setAttribute('value', quantity + 1)
            //get Element Price
            let p = e.parentElement.parentElement.parentElement.getElementsByTagName('td')[4].getElementsByTagName('p')[0]
            let price = p.textContent
            let newPrice = Number(price) + Number(price)/quantity
            p.innerHTML = newPrice+''
            //get element checkbox
            let input = e.parentElement.parentElement.parentElement.getElementsByTagName('td')[5].getElementsByTagName('input')[0]
            if(input.checked === true){
                let total = document.getElementById('total').textContent
                $('#total').html(Number(total) + Number(price)/quantity)
                $('#totalHidden').val(Number(total) + Number(price)/quantity)
            }
        }
        function checkItem(e){
            //get Element Price
            let p = e.parentElement.parentElement.getElementsByTagName('td')[4].getElementsByTagName('p')[0]
            let priceP = p.textContent
            let total = document.getElementById('total').textContent
            //get Element checkBox
            if(e.checked === false){
                e.setAttribute("value","")
                document.getElementById('total').innerHTML = Number(total) - Number(priceP) + ''
                $('#totalHidden').val(Number(total) - Number(priceP) + '')
            }
            else{
                e.setAttribute("value","checked")
                document.getElementById('total').innerHTML = Number(total) + Number(priceP) + ''
                $('#totalHidden').val(Number(total) + Number(priceP) + '')
            }
        }
    </script>
</head>
<body style="height: 100%">
<div class="container h-100">
    <form class="d-flex flex-column h-100" action="control">
        <div class="d-flex mt-2 justify-content-between w-50" style="height: 5%;">
            <button class="btn btn-primary h-100 py-1" name="back">Danh mục sản phẩm</button>
            <p class="h4">Giỏ hàng</p>
        </div>
        <div style="overflow-y: scroll; height: 75%">
            <table class="table table-hover text-center h4" style="height: 500px;">
                <thead>
                <tr>
                    <th style="width: 5%">STT</th>
                    <th style="width: 20%">Ảnh</th>
                    <th style="width: 30%;">Tên sản phẩm</th>
                    <th style="width: 20%;">Số lượng</th>
                    <th style="width: 15%;">Giá</th>
                    <th style="width: 10%;">Chọn</th>
                </tr>
                </thead>
                <tbody id="tbody">
                <%
                    Map<String, String> map;
                    Object o = session.getAttribute("cart");
                    if(o != null){
                        map = (Map<String, String>) o;
                        int stt = 1;
                        ProductPriceModel productPriceModel = new ProductPriceModel();
                        ProductImageModel productImageModel = new ProductImageModel();
                        ProductModel productModel = new ProductModel();
                        long id;
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            id = productModel.getIdByName(entry.getKey());%>
                <tr>
                    <td><%=stt%></td>
                    <td><img width="100%" src="<%=productImageModel.getPathByProductId(id)%>"></td>
                    <td><%=entry.getKey()%></td>
                    <td>
                        <%--                    <input class="" type="number" value="<%=entry.getValue()%>" min="1">--%>
                        <div class="d-flex justify-content-center">
                            <button class="btn btn-danger" type="button" onclick="reduceQuantity(this)">-</button>
                            <input value="<%=entry.getValue()%>" name="quantity<%=stt%>" id="quantity" readonly class="text-center mx-2" style="width: 50px;">
                            <button class="btn btn-success" type="button" onclick="increaseQuantity(this)">+</button>
                        </div>
                    </td>
                    <td><p id="price<%=stt%>"><%=productPriceModel.getPriceByProductId(id)*Integer.parseInt(entry.getValue())%></p></td>
                    <td style="align-items: flex-start"><input class="h-50 w-50" value="" name="checkBox<%=stt%>" type="checkbox" onclick="checkItem(this)"></td>
                </tr>
                <input type="hidden" name="<%=stt++%>" value="<%=entry.getKey()%>">
                <%}}%>
                </tbody>
            </table>
        </div>
        <div class="d-flex justify-content-between h4" style="height: 20%; align-items: center">
            <p class="my-auto">Tổng tiền: <span class="text-danger" id="total">0</span></p>
            <input type="hidden" id="totalHidden" name="total" value="0">
            <button class="w-25 bg-danger h-50" type="submit" name="order">Mua</button>
        </div>
    </form>
</div>
</body>
</html>
