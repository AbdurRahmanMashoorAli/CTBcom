<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
            <div class="form-box">
                <div class="button-box">
                    <div id="btn"></div>
                    <button type="button" class="toggle-btn" onclick="Login()">LOGIN</button>
                    <button type="button" class="toggle-btn" onclick="Register()">REGISTER</button>
                </div>

                <div class="social-icons">
                    <img src="facebook.png">
                    <img src="instagram.png">
                    <img src="google.png">
                </div>

                <form id="login" method="POST" action="PassengerHome.php" class="input-area">

                    <?php include('errors.php') ?>

                    <input type="text" class="txtNic" name="txtNic" placeholder="User NIC" required>

                    <input type="text" class="txtPassword" name="txtPassword" placeholder="User Password" required>

                    <button type="submit" name="btn-PassengerLogin" class="btn-PassengerLogin">LOGIN</button>

                </form>

                <form id="register" method="POST" action="PassengerHome.php" class="input-area">

                    <input type="text" class="txtNic" name="txtNic" placeholder="NIC" required>

                    <input type="text" class="txtUname" name="txtUname" placeholder="Name" required>
                    
                    <input type="text" class="txtEmail" name="txtEmail" placeholder="Email" required>
                    
                    <input type="text" class="txtTelePhone" name="txtTelePhone" placeholder="TelePhone" required>

                    <input type="text" class="txtPassword1" name="txtPassword1" placeholder="Password" required>
                    <input type="text" class="txtPassword2" name="txtPassword2" placeholder="Retype Password" required>

                    <button type="submit" name="btn-PassengerRegister" class="btn-PassengerRegister" >REGISTER</button>

                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");

            function Register() {
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }

            function Login() {
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0px";
            }

        </script>
</body>
</html>