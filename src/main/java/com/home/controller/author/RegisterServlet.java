package com.home.controller.author;

import java.io.IOException;

import com.home.dao.userDAOImpl;
import com.home.dto.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/author/Register")
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int user_id = Integer.parseInt(req.getParameter("uid"));
        String name = req.getParameter("uname");
        String email = req.getParameter("email");
        String password = req.getParameter("pass");
        String role = req.getParameter("role");
        long phone = Long.parseLong(req.getParameter("phone"));

        Users user = new Users(user_id, name, email, password, role, phone);

        userDAOImpl dao = new userDAOImpl();
        boolean status = dao.Register(user);

        if(status) {
            resp.sendRedirect("Login.jsp");
        } else {
            resp.sendRedirect("Register.jsp");
        }
    }
}