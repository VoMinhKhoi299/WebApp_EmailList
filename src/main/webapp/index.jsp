<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
<form action="customer" method="post">
    <div class="header-logo">
        <img srcset="images/murachlogo.jpg" alt="Murach Logo" >
        <h2>Murach</h2>
    </div>
    <div class="header">
        <h1>Survey</h1>
        <div class="fade-in-up">
            <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
        </div>
    </div>
    <div class="main-container">
        <div class="fade-in-up">
            <div class="form-table">
                <h2 id="header-form">Your information:</h2>
                <label>First Name</label>
                <input type="text" name="firstName" required><br>
                <label>Last Name</label>
                <input type="text" name="lastName" required><br>
                <label>Email</label>
                <input type="email" name="email" required><br>
                <label>Date of Birth</label>
                <input type="date" name="dateOfBirth" max="2025-01-01"><br>

                <h2>How did you hear about us?</h2>
                <p> <input type=radio name="heardFrom" value="Search Engine" checked>Search engine
                    <input type=radio name="heardFrom" value="Friend">Word of mouth
                    <input type=radio name="heardFrom" value="Social Media">Social Media
                    <input type=radio name="heardFrom" value="Other">Other</p>

                <h2>Would you like to receive announcements about new CDs and special offers?</h2>
                <p><input type="checkbox" id="updates" name="wantsUpdates">YES, I'd like that.</p>
                <!-- Khối ẩn -->
                <div id="extraInfo" style="display:none; margin-left:2rem;">
                    <p>
                        <input type="checkbox" id="emailOK" name="emailOK">
                        YES, please send me email announcements.
                    </p>
                    <p id="showEmail" style="font-size:0.9rem; color:#333;"></p>
                </div>

                <p>Please contact me by:
                    <select name="contactVia">
                        <option value="Both" selected>Email or postal mail</option>
                        <option value="Email">Email only</option>
                        <option value="Postal Mail">Postal mail only</option>
                    </select>
                </p>

                <input type=submit value="Submit" class="btn-submit">
            </div>
        </div>
    </div>
</form>
<script>
    const updatesCheckbox = document.getElementById("updates");
    const extraInfo = document.getElementById("extraInfo");
    const emailOK = document.getElementById("emailOK");
    const showEmail = document.getElementById("showEmail");
    const emailInput = document.querySelector("input[name='email']");

    updatesCheckbox.addEventListener("change", function () {
        if (this.checked) {
            extraInfo.style.display = "block";
            showEmail.textContent = "We will use this email: " + emailInput.value;
        } else {
            extraInfo.style.display = "none";
            emailOK.checked = false;
            showEmail.textContent = "";
        }
    });


    emailInput.addEventListener("input", function () {
        if (updatesCheckbox.checked) {
            showEmail.textContent = "We will use this email: " + emailInput.value;
        }
    });
</script>


</body>
</html>