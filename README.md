# labWeek02_NguyenThanhSon_20106421
exercise week 02

Khi chạy chương trình, trang index sẽ hiển thị với 4 lựa chọn manage Product, Employee, Customer, Order
![Screenshot (1)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/1cf6547e-e59c-48c1-81ec-eafa4af3840b)
- Khi nhấn vào lựa chọn manage trang hiển thị sẽ hiển thị danh sách các object theo lựa chọn
- Khi chọn Manager Product trang sẽ hiển thị danh sách các sản phẩm. Thông tin sản phẩm được lấy trên API: http://localhost:8080/nts/api/products
  ![Screenshot (53)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/fadad2b8-e1aa-45f9-ab5d-1c1c2b73e6b0)
  ![Screenshot (51)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/f8c59d9b-e5ca-4f8d-9d3b-a603d078ecee)
  + Có thể thêm sản phẩm mới bằng cách nhấn vào Insert, điền thông tin sau đó Insert.
    ![Screenshot (3)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/8d69c93e-eb5d-46ff-a291-8aabafc24826)
  + Có thể lựa chọn sản phẩm để thêm vào giỏ hàng bằng cách nhấn Add, chọn số lượng và Thêm vào giỏ hàng
    ![Screenshot (6)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/302c0fb7-1be1-4cf5-bdaf-a1be8ced3836)
  + Sau khi thêm vào giỏ hàng sẽ chuyển đến trang giỏ hàng, có thể lựa chọn sản phẩm để thanh toán bằng cách click vào checkbox bên cạnh sản phẩm và chọn Mua
    ![Screenshot (4)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/d2eab0e9-ed72-4759-9448-4265da71261b)
  + Sau khi chọn mua, sẽ hiển thị hoá đơn và có thể xác nhận bằng cách nhấn Mua, sau đó một hoá đơn sẽ được tạo và lưu, rồi chuyển đến trang manage order.
    ![Screenshot (68)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/c47b29d8-fafb-4301-96a2-8640893015c7)
    Một order mới đã được tạo, lưu vào database và hiển thị lên đầu danh sách(do danh sách order được sắp xếp theo ngày lập giảm dần).
    ![Screenshot (52)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/388afdc9-d699-45f1-9e0a-166020356c32)
  + Vẽ biểu đồ giá theo thời gian: nhấn vào Chart để xem biểu đồ giá của một sản phẩm theo thời gian.
      * Màn hình:
        ![Screenshot (62)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/c233f5fa-cf0c-4123-a919-64df9bb219f0)
      * Thông tin được lấy từ API: http://localhost:8080/nts/api/product-price/product/1
        ![Screenshot (63)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/db64bb52-171d-4eb4-9e03-a70947f664a5)
- Trang order:
  + Màn hình:
    ![Screenshot (52)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/d6525da1-96fb-4ca0-81a1-68684f079df5)
  + Thông tin được lấy từ API: http://localhost:8080/nts/api/orders
    ![Screenshot (54)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/639e3668-54d7-47d3-83aa-52e634c913d5)
  + Xem thông tin order detail của order: click vào button View trong cột View Detail(order có id = 1 chứa nhiều detail).
    ![Screenshot (55)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/6ae6f99d-99be-4576-a41b-7dfc0c97378c)
  + Xem nhân viên đã lập order: click vào employee id trong cột Employee Id của 1 order để xem thông tin nhân viên.
    ![Screenshot (56)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/54071987-4a73-4897-a4f6-32832507ca50)
  + Xem khách hàng đã order: click vào customer id trong cột Customer Id của 1 order để xem thông tin khách hàng.
    ![Screenshot (57)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/176794e0-aecc-4451-8514-8c0692cfa8ba)
- Trang employee:
  + Màn hình:
  ![image](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/91d0628c-5d3a-4daf-a069-d63938a4912f)
  + Thông tin được lấy từ API: http://localhost:8080/nts/api/employees
  ![Screenshot (59)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/aa918889-c37c-4252-a54c-d22ee74c7b1c)
- Trang Customer:
  + Màn hình:
  ![Screenshot (60)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/2639eb9f-1596-4b64-8a71-b103470095d1)
  + Thông tin được lấy từ API: http://localhost:8080/nts/api/customers
  ![Screenshot (61)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/6401ce8f-0499-428b-a4ea-3ccc94d0c9e3)
- Thống kê order:
  + Thống kê order theo ngày, truyền thông tin ngày vào query để lấy các order trong ngày đó:
    * API: http://localhost:8080/nts/api/orders/filter?orderDate=2023-09-05
      ![Screenshot (64)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/b154e963-d65f-487a-b5d8-0720bda93afc)
  + Thống kê order theo khoảng thời gian, truyền thông tin from date và to date vào để lấy các order trong khoảng thời gian đó:
    * API: http://localhost:8080/nts/api/orders/filter?fromDate=2023-09-05&toDate=2023-09-07
      ![Screenshot (65)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/54bde2ab-0e3e-4513-b6eb-40ad5c13f4a3)
  + Thống kê order được lập bởi một nhân viên, truyền mã nhân viên và ngày lập vào để lọc:
    * API: http://localhost:8080/nts/api/orders/employee/1?orderDate=2023-09-07
      ![Screenshot (66)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/09bc4ac0-9c3b-44eb-8000-1fc72a85cb4e)
  + Thống kê order được lập bởi một nhân viên, truyền mã nhân viên và from date với to date để lọc các order trong khoảng thời gian và lập bởi nhân viên đó:
    * API: http://localhost:8080/nts/api/orders/employee/1?fromDate=2023-09-05&toDate=2023-09-07
      ![Screenshot (67)](https://github.com/son1105/labWeek02_NguyenThanhSon_20106421/assets/115455297/2ca35b39-c20f-4625-b21c-b3c8d9da381d)


