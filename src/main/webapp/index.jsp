<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
    <img src="k-high-resolution-logo-transparent.png" alt="Logo" class="logo">
    <h2>Join our team by submitting your Email</h2>
</div>
<div class="form-body">
    <form action="customer" method="post">
        <label for="email">Email</label>
        <input type="text" id="email" name="email" required>
        <label for="firstName">First Name</label>
        <input type="text" id="firstName" name="firstName" required>
        <label for="lastName">Last Name</label>
        <input type="text" id="lastName" name="lastName" required>
        <button type="submit">Submit</button>
        <p>By clicking submit, you agree to our <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>.</p>
    </form>
</div>
</body>
</html>