package com.home.controller.admin;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/admin/dashboard")
public class AdminDashboardServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        // 🔐 role check (same like chef/customer)
        if (session == null || !"admin".equals(session.getAttribute("role"))) {
            response.sendRedirect("../jsp/auth/login.jsp");
            return;
        }

        request.getRequestDispatcher("/jsp/admin/dashboard.jsp")
               .forward(request, response);
    }
}