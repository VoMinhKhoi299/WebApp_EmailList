<%--
  Created by IntelliJ IDEA.
  User: khodo
  Date: 21/8/25
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanks</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<div class="form-body">
    <div class="header-logo">
        <img srcset="murachlogo.jpg" alt="Murach Logo" >
        <h2>Murach</h2>
    </div>
    <div class="header">
        <h1>Survey</h1>
        <div class="fade-in-up">
            <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
        </div>
    </div>
    <div class="main-container">
        <div class="form-table">
            <form action="customer" method="get">
                <h3>Your Information:</h3>
                <p><strong>Email:</strong> <span>${customer.email}</span></p>
                <p><strong>First Name:</strong> <span>${customer.firstName}</span></p>
                <p><strong>Last Name:</strong> <span>${customer.lastName}</span></p>
                <p><strong>Date Of Birth : </strong><span>${customer.dateOfBirth}</span></p>
                <p><strong>How did you find us : </strong><span>${customer.heardUs}</span></p>
                <p><strong>Contact you by : </strong><span>${customer.contactMe}</span></p>
                <p>  </p>
            </form>
            <form action="customer" method="get">
                <input type="submit" value="Return">
            </form>
        </div>
    </div>
</div>
</body>
</html>
