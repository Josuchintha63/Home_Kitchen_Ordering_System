package com.home.controller.customer;

import java.io.IOException;
import java.util.List;

import com.home.dao.CartDAOImpl;
import com.home.dao.CartDao;
import com.home.dao.OrderDAOImpl;
import com.home.dao.OrderDao;
import com.home.dto.Cart;
import com.home.dto.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/customer/PlaceOrder")
public class PlaceOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse resp)
            throws ServletException, IOException {

        HttpSession session = req.getSession();
        Users user = (Users) session.getAttribute("us");

        if (user == null) {
            resp.sendRedirect("../author/login.jsp");
            return;
        }

        int userId = user.getUser_id();

        CartDao cartDao = new CartDAOImpl();
        OrderDao orderDao = new OrderDAOImpl();

        
        List<Cart> cartItems = cartDao.getCartItems(userId);

        for (Cart c : cartItems) {

            int foodId = c.getFood_id();
            int quantity = c.getQuantity();
            double total = c.getFood().getPrice() * quantity;

            orderDao.placeOrder(userId, foodId, quantity, total);
        }
        cartDao.clearCart(userId);
        resp.sendRedirect("OrderHistory");
    }
}
