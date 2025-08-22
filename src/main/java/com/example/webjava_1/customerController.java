package com.example.webjava_1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet("/customer")
public class customerController extends HttpServlet{

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("back".equals(action)) {
            // Lấy dữ liệu từ session (cách phổ biến)
            customerInfo customer = (customerInfo) request.getSession().getAttribute("customer");

            // Gửi lại dữ liệu về form
            request.setAttribute("customer", customer);
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            // logic khác (ví dụ hiển thị form mặc định)
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Lay du lieu
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        customerInfo customer = new customerInfo(email, firstName, lastName);

        request.getSession().setAttribute("customer", customer);
        request.setAttribute("customer", customer);
        String url="/thanks.jsp";

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }
}
