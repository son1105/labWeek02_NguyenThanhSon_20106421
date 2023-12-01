<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 1/12/2023
  Time: 11:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // Hàm để vẽ biểu đồ đường
        function drawLineChart(data) {
            // Lấy tham chiếu đến canvas
            const ctx = document.getElementById('myLineChart').getContext('2d');

            // Cấu hình biểu đồ
            const options = {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            };

            // Tạo biểu đồ đường
            const myLineChart = new Chart(ctx, {
                type: 'line',
                data: data,
                options: options
            });
        }
    </script>
</head>
<body>
<div class="container">
    <h4>Product Id: <%=session.getAttribute("chartOfProduct")%></h4>
    <canvas id="myLineChart"></canvas>
    <script>
        fetch('http://localhost:8080/nts/api/product-price/product/'+'<%=session.getAttribute("chartOfProduct")%>')
            .then(res => res.json())
            .then(res => {
                var chartData1 = {
                    labels: [],
                    datasets: [{
                        label: 'Doanh số bán hàng',
                        data: [],
                        borderColor: 'rgb(75, 192, 192)',
                        borderWidth: 2,
                        fill: false
                    }]
                };
                for (let i=0;i<res.length;i++){
                    chartData1.labels.push(res[i].price_date_time)
                    chartData1.datasets[0].data.push(res[i].price)
                }
                drawLineChart(chartData1)
            })
    </script>
</div>
</body>
</html>
