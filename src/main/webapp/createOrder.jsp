<%@ page import="java.util.Map" %>
<%@ page import="vn.edu.iuh.fit.frontend.models.ProductImageModel" %>
<%@ page import="vn.edu.iuh.fit.frontend.models.ProductPriceModel" %>
<%@ page import="vn.edu.iuh.fit.frontend.models.ProductModel" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 13/10/2023
  Time: 11:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body class="h-100">
<div class="container d-flex bg-light h-100 flex-column">
    <form class="h-100" action="control" method="post">
        <div style="height: 85%; overflow-y: scroll;">
            <table class="table table-hover text-center h4 h-100">
                <thead>
                <th style="width: 5%">STT</th>
                <th style="width: 20%">Ảnh</th>
                <th style="width: 30%;">Tên sản phẩm</th>
                <th style="width: 20%;">Số lượng</th>
                <th style="width: 15%;">Giá</th>
                </thead>
                <tbody>
                <%
                    Object o = session.getAttribute("order");
                    if(o != null){
                        Map<String, String> map = (Map<String, String>) o;
                        ProductModel productModel = new ProductModel();
                        ProductImageModel imageModel = new ProductImageModel();
                        ProductPriceModel priceModel = new ProductPriceModel();
                        int stt = 1;
                        long id;
                        for(Map.Entry<String, String> entry : map.entrySet()){
                            id = productModel.getIdByName(entry.getKey());
                %>
                    <tr>
                        <td><%=stt++%></td>
                        <td><img width="100%" src="<%=imageModel.getPathByProductId(id)%>"></td>
                        <td><%=entry.getKey()%></td>
                        <td><%=entry.getValue()%></td>
                        <td><%=priceModel.getPriceByProductId(id) * Integer.parseInt(entry.getValue())%></td>
                    </tr>
                <%}}%>
                </tbody>
            </table>
        </div>
        <div class="d-flex justify-content-between h4 py-3" style="height: 8%; margin-left: 5% ; width: 90%;">
            <p>Tổng tiền: </p>
            <p class="text-danger"><%=session.getAttribute("total")%></p>
        </div>
        <div class="w-100 h4 text-light" style="height: 7%;">
            <button class="bg-danger w-100" type="submit" name="createOrder">Mua</button>
        </div>
    </form>
</div>
</body>
</html>
