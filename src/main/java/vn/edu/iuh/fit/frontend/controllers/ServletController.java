package vn.edu.iuh.fit.frontend.controllers;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.OrderDetail;
import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.frontend.models.*;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@WebServlet(urlPatterns = {"/control"})
public class ServletController extends HttpServlet {
    private Map<String, String> map = null;
    private final OrderModel orderModel = new OrderModel();
    private final EmployeeModel employeeModel = new EmployeeModel();
    private final CustomerModel customerModel = new CustomerModel();
    private final OrderDetailModel orderDetailModel = new OrderDetailModel();
    private final ProductModel productModel = new ProductModel();
    private final ProductImageModel productImageModel = new ProductImageModel();
    private final ProductPriceModel productPriceModel = new ProductPriceModel();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
//        EntityManager entityManager = Connection.getInstance().getEntityManagerFactory().createEntityManager();
//        EntityTransaction transaction = entityManager.getTransaction();
//        transaction.begin();
//        System.out.println("OK");
        if (req.getParameter("cart") != null) {
            resp.sendRedirect("cart.jsp");
        } else if (req.getParameter("back") != null) {
            Map<String, String> map = handleGetMap(req, resp);
            HttpSession session = req.getSession();
            session.setAttribute("cart", map);
            resp.sendRedirect("manageProduct.jsp");
        } else if (req.getParameter("order") != null) {
            Map<String, String> map = handleGetMapChecked(req, resp);
            HttpSession session = req.getSession();
            session.setAttribute("order", map);
            session.setAttribute("total", req.getParameter("total"));
            resp.sendRedirect("createOrder.jsp");
        } else if (req.getParameter("chart") != null) {
            HttpSession session = req.getSession();
            session.setAttribute("chartOfProduct", req.getParameter("chart"));
            resp.sendRedirect("chart.jsp");
        } else {//button addToCart
            List<Product> products = productModel.getAll();
            if (products != null) {
                int i = 0;
                while (req.getParameter("btn" + i) == null) {
                    i++;
                }
                Product product = productModel.getProduct(i);
                HttpSession session = req.getSession();
                session.setAttribute("productName", product.getName());
                session.setAttribute("productPrice", productPriceModel.getPriceByProductId(i));
                session.setAttribute("productPath", productImageModel.getPathByProductId(i));
                resp.sendRedirect("addToCart.jsp");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if (req.getParameter("insertProduct") != null) {
            System.out.println(productModel.addProduct(req, resp));
            resp.sendRedirect("manageProduct.jsp");
        } else if (req.getParameter("insertEmployee") != null) {
            System.out.println(employeeModel.addEmployee(req, resp));
            resp.sendRedirect("manageEmployee.jsp");
        } else if (req.getParameter("insertCustomer") != null) {
            System.out.println(customerModel.addCustomer(req, resp));
            resp.sendRedirect("manageCustomer.jsp");
        } else if (req.getParameter("createOrder") != null) {
            System.out.println(orderModel.addOrder(req, resp));
            addOrderDetail(req, resp);
            resp.sendRedirect("manageOrder.jsp");
        } else if (req.getParameter("addToCart") != null) {
            HttpSession session = req.getSession();
            Object o = session.getAttribute("cart");
            if (o != null) {
                map = (Map<String, String>) o;
            } else map = new HashMap<>();
            String name = req.getParameter("name");
            String quantity = req.getParameter("quantity");
            String oldQuantity = map.get(name);
            if (oldQuantity == null)
                map.put(name, quantity);
            else map.put(name, (Integer.parseInt(quantity) + Integer.parseInt(oldQuantity)) + "");
            session.setAttribute("cart", map);
            resp.sendRedirect("cart.jsp");
        }
    }

    public Map<String, String> handleGetMap(HttpServletRequest req, HttpServletResponse resp) {
        int stt = 1;
        Map<String, String> map = new HashMap<>();
        String quantity;
        String name = req.getParameter(stt + "");
        while (name != null) {
            quantity = req.getParameter("quantity" + stt);
            map.put(name, quantity);
            stt++;
            name = req.getParameter(stt + "");
        }
        return map;
    }

    public Map<String, String> handleGetMapChecked(HttpServletRequest req, HttpServletResponse resp) {
        int stt = 1;
        Map<String, String> map = new HashMap<>();
        String quantity;
        String name = req.getParameter(stt + "");
        while (name != null) {
            if (Objects.equals(req.getParameter("checkBox" + stt), "checked")) {
                quantity = req.getParameter("quantity" + stt);
                map.put(name, quantity);
            }
            stt++;
            name = req.getParameter(stt + "");
        }
        return map;
    }

    public void addOrderDetail(HttpServletRequest req, HttpServletResponse resp) {
        Map<String, String> map = (Map<String, String>) req.getSession().getAttribute("order");
        OrderDetail orderDetail;
        long id;
        double quantity;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            id = productModel.getIdByName(entry.getKey());
            quantity = Double.parseDouble(entry.getValue());
            orderDetail = new OrderDetail(
                    orderModel.getNewOrder(),
                    productModel.getProduct(id),
                    quantity,
                    productPriceModel.getPriceByProductId(id) * quantity,
                    "");
            orderDetailModel.addOrderDetail(orderDetail);
        }
    }
}
