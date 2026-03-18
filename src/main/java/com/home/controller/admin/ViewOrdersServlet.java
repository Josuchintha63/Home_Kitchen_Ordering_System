package com.home.controller.admin;

import com.home.dao.OrderDao;
import com.home.dao.OrderDAOImpl;
import com.home.dto.Order;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/orders")
public class ViewOrdersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // reuse chef DAO logic
        OrderDao dao = new OrderDAOImpl();
        List<Order> orders = dao.getAllOrders();

        request.setAttribute("orders", orders);

        request.getRequestDispatcher("/jsp/admin/all-orders.jsp")
               .forward(request, response);
    }
}