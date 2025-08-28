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
<div class="header">
    <img src="src/main/webapp/k-high-resolution-logo-transparent.png" alt="Logo" class="logo">
    <h2>Thank You for Submitting!</h2>
</div>
<div class="form-body">
    <form action="customer" method="get">
        <h3>Your Information:</h3>
        <p><strong>Email:</strong> <span>${customer.email}</span></p>
        <p><strong>First Name:</strong> <span>${customer.firstName}</span></p>
        <p><strong>Last Name:</strong> <span>${customer.lastName}</span></p>
        <p>  </p>
        <input type="hidden" name="action" value="back">
        <button type="submit">Go Back</button>
    </form>
</div>
</body>
</html>
