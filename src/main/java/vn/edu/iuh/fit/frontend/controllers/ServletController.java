package vn.edu.iuh.fit.frontend.controllers;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.iuh.fit.backend.connection.Connection;
import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.backend.respositoris.OrderRespository;
import vn.edu.iuh.fit.frontend.models.CustomerModel;
import vn.edu.iuh.fit.frontend.models.EmployeeModel;
import vn.edu.iuh.fit.frontend.models.ProductModel;

import java.io.IOException;

@WebServlet(urlPatterns = {"/control"})
public class ServletController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        if(req.getParameter("insertProduct") != null){
            new ProductModel().addProduct(req,resp);
        }else if(req.getParameter("insertEmployee") != null){
            new EmployeeModel().addEmployee(req,resp);
        }else if(req.getParameter("insertCustomer") != null){
            new CustomerModel().addCustomer(req,resp);
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
