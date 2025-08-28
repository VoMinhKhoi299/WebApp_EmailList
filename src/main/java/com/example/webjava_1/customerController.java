package com.example.webjava_1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CustomerController", urlPatterns = {"/customer"})
public class customerController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        process(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        if ("back".equals(request.getParameter("action"))) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
            return;
        }
        process(request, response);
    }

    private void process(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        customerInfo customer = new customerInfo(email, firstName, lastName);
        request.setAttribute("customer", customer);

        request.getRequestDispatcher("/thanks.jsp").forward(request, response);
    }
}
