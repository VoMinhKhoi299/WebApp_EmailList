package com.example.webjava_1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/customer")
public class customerController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String email = request.getParameter("email");
                String firstName = request.getParameter("firstName");
                String lastName = request.getParameter("lastName");
                String dateOfBirth = request.getParameter("dateOfBirth");
                String heardUs = request.getParameter("heardUs");
                String contactMe = request.getParameter("contactMe");

                customerInfo customer = new customerInfo(email, firstName, lastName,  dateOfBirth, heardUs, contactMe);
                request.setAttribute("customer", customer);

                request.getRequestDispatcher("/thanks.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
