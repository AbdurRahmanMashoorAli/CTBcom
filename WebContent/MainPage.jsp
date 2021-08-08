<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            background: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }
        
        .container {
            width: 1000px;
            position: relative;
            display: flex;
            justify-content: space-between;
        }
        
        .container .card {
            position: relative;
        }
        
        .container .card .face {
            width: 300px;
            height: 200px;
            transition: 0.5s;
        }
        /*.container .card .face.face1 
        

        */
        
        .container .card .face.face1 .content {
            opacity: 0.2;
            transition: 0.5s;
        }
        
        .container .card:hover .face.face1 .content {
            opacity: 1;
        }
        
        .container .card .face.face1 .content img {
            max-width: 100px;
        }
        
        .container .card .face.face1 .content h3 {
            margin: 10px 0 0;
            padding: 0;
            color: #fff;
            text-align: center;
            font-size: 1.5em;
        }
        
        .container .card .face.face1 {
            position: relative;
            background: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            z-index: 1;
            transform: translateY(100px);
        }
        
        .container .card:hover .face.face1 {
            background: #ff0057;
            transform: translateY(0px);
        }
        
        .container .card .face.face2 {
            position: relative;
            background: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            box-sizing: border-box;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.8);
            transform: translateY(-100px);
        }
        
        .container .card:hover .face.face2 {
            transform: translateY(0px);
        }
        
        .container .card .face.face2 .content p {
            margin: 0;
            padding: 0;
        }
        
        .container .card .face.face2 .content a {
            margin: 15px 0 0;
            display: inline-block;
            text-decoration: none;
            font-weight: 900;
            color: #333;
            padding: 5px;
            border: 1px solid #333
        }
        
        .container .card .face.face2 .content a:hover {
            background: #333;
            color: #fff;
        }
        
        @media (max-width: 992px) {
            .container {
                width: 100%;
                flex-direction: column;
                align-items: center;
            }
            .container .card {
                width: auto;
            }
        }
</style>
</head>
<body>
	<div class="container">
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="passenger.jpg">
                    <h3>Passenger and Public</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>This is Passengers Page</p>
                    <a href="passengerRegisterandLogin.jsp">Login as Passenger or Public</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="Driver.jpg">
                    <h3>Driver and Conducter</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>This is Driver and Conducter Page</p>
                    <a href="DriverandConducterLogin.jsp">Login as Driver or Conducter</a>
                </div>
            </div>
        </div>
        <div class="card">
            <div class="face face1">
                <div class="content">
                    <img src="Administrative.jpg">
                    <h3>Administrater</h3>
                </div>
            </div>
            <div class="face face2">
                <div class="content">
                    <p>This is Administrater Page</p>
                    <a href="AdministraterLogin.jsp">Login as Administrater</a>
                </div>
            </div>
        </div>
    </div>
	
</body>
</html>