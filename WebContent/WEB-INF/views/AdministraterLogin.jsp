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
                    <div id="btn">LOGIN</div>
                </div>
                
                <div class="social-icons">
                    <img src="">
                    <img src="">
                    <img src="">
                </div>

                <form id="login" method="POST" action="AdministrationHome.php" class="input-area">

                    <?php include('errors.php') ?>

                    <input type="text" class="txtUname" placeholder="User Name" required>

                    <input type="text" class="txtPassword" placeholder="User Password" required>

                    <button type="submit" class="btn-AdminLogin">LOGIN</button>

                </form>

                
            </div>
        </div>
</body>
</html>