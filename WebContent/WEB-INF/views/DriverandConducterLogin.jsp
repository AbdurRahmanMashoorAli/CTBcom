<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
            <div class="form-box">
                <div class="button-box">
                    <div id="btn"></div>
                    <button type="button" class="toggle-btn" onclick="DriLogin()">Dri_LOGIN</button>
                    <button type="button" class="toggle-btn" onclick="ConLogin()">Con_LOGIN</button>
                </div>

                <div class="social-icons">
                    <img src="">
                    <img src="">
                    <img src="">
                </div>

                <form id="drilogin" method="POST" action="DriverAndConducterLogin.php" class="input-area">

                    <?php include('errors.php') ?>

                    <input type="text" class="txtLicNo" placeholder="Licen Number" required>

                    <input type="text" class="txtPassword" placeholder="User Password" required>

                    <button type="submit" class="btn-DriLogin">LOGIN</button>

                </form>

                <form id="conlogin" method="POST" action="DriverAndConducterLogin.php" class="input-area">

                    <?php include('errors.php') ?>

                    <input type="text" class="txtLicNo" placeholder="Licen Number" required>

                    <input type="text" class="txtPassword" placeholder="User Password" required>

                    <button type="submit" class="btn-ConLogin">LOGIN</button>

                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("drilogin");
            var y = document.getElementById("conlogin");
            var z = document.getElementById("btn");

            function ConLogin() {
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }

            function DriLogin() {
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0px";
            }

        </script>
</body>
</html>