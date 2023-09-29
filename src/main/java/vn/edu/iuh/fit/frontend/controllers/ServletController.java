package vn.edu.iuh.fit.frontend.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vn.edu.iuh.fit.backend.entities.Product;
import vn.edu.iuh.fit.frontend.models.ProductModel;

import java.io.IOException;

@WebServlet(urlPatterns = {"/control"})
public class ServletController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String actionObject = req.getParameter("action");
        if(req.getParameter("insertProduct") != null){
//            String action = actionObject.toString();
//            System.out.println(action);
//            if (action.equals("insertProduct")){
                System.out.println("aloalo");
                new ProductModel().addProduct(req,resp);
//            }
        }else {
            System.out.println("null cmnr");
        }
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
