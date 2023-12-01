<%@ page import="java.util.List" %>
<%@ page import="vn.edu.iuh.fit.backend.entities.OrderDetail" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/12/2023
  Time: 1:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Order Detail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h4>Order Id <%=session.getAttribute("orderId")%></h4>
<div style="overflow-y: scroll;" class="h-100 p-5">
    <table class="table table-hover table-bordered text-center h-100">
        <thead class="table-info">
        <tr>
            <th>Product Id</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Note</th>
        </tr>
        </thead>
        <tbody>
            <%
                List<OrderDetail> orderDetails = (List<OrderDetail>) session.getAttribute("detail");
                for (OrderDetail od : orderDetails){%>
                    <tr>
                        <td><%=od.getProduct().getId()%></td>
                        <td><%=od.getQuantity()%></td>
                        <td><%=od.getPrice()%></td>
                        <td><%=od.getNote()%></td>
                    </tr>
                <%}%>
        </tbody>
    </table>
</div>
</body>
</html>
