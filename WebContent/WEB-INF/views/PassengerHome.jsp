<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	 @import url('https://fonts.googleapis.com/css?family=poppins:400,500,600,700,800,900&display=swap');
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'poppins', sans-serif;
        }
        
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            background: #222;
            min-height: 100vh;
        }
        
        .container {
            position: relative;
            width: 1000px;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            margin: 20px;
        }
        
        .container .card {
            position: relative;
            height: 250px;
            background: #ffff;
            display: flex;
            width: 45%;
            margin: 30px 0;
        }
        
        .container .card .imgbox {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #333;
            z-index: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
            transition: 0.5s ease-in-out;
        }
        
        .container .card:hover .imgbox {
            width: 150px;
            height: 150px;
            left: -75px;
            top: calc(50% - 75px);
            transition: 0.5s ease-in-out;
            background: #ff0057;
        }
        
        .container .card .imgbox:before {
            content: attr(data-text);
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            text-align: center;
            font-size: 3em;
            color: rgba(255, 255, 255, .05);
            font-weight: 200;
        }
        
        .container .card .imgbox img {
            max-width: 100px;
            transition: 0.5s ease-in-out;
        }
        
        .container .card:hover .imgbox img {
            max-width: 75px;
        }
        
        .container .card .content {
            position: absolute;
            right: 0;
            width: calc(100% - 75px);
            height: 100%;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        
        .container .card .content h3 {
            margin-bottom: 1px;
            font-size: 20px;
        }
        
        .container .card .content a {
            display: inline-block;
            margin-top: 20px;
            padding: 5px 10px;
            background: #333;
            text-decoration: none;
            color: #fff;
        }
        
        @media (max-width: 992px) {
            .container {
                width: 100%;
                flex-direction: column;
                align-items: center;
            }
            .container .card {
                width: 400px;
            }
        }
</style>
</head>
<body>
	<div class="container">
        <div class="card">
            <div class="imgbox" data-text="Services">
                <img src="services.jpg">
            </div>
            <div class="content">
                <h3>Services</h3>
                <p>Click on below to check services</p>
                <a href="busdetails.php">Click here</a>
            </div>
        </div>
        <div class="card">
            <div class="imgbox" data-text="Booking">
                <img src="busbooking.jpg">
            </div>
            <div class="content">
                <h3>Reservation and Booking</h3>
                <p>Click on below to Reserve seats</p>
                <a href="reservationdetails.php">Click here</a>
            </div>
        </div>
        <div class="card">
            <div class="imgbox" data-text="Locater">
                <img src="Locater.jpg">
            </div>
            <div class="content">
                <h3>Route Details</h3>
                <p>Click on below to view routes</p>
                <a href="/routeDetails">Click here</a>
            </div>
        </div>
        <div class="card">
            <div class="imgbox" data-text="Quick Refferance">
                <img src="quickresource.jpg">
            </div>
            <div class="content">
                <h3>Contact Us</h3>
                <p>Click on below to provide a suggections</p>
                <a href="contactpage.php">Click here</a>
            </div>
        </div>
    </div>
    <?php 
    if(isset($_SESSION['success'])) : ?>
        <?php 
        echo $_SESSION['success'];
        unset($_SESSION['success']);
        ?>
    <?php endif ?>
    /////to LogOut click the logout button, anyway this gonna be designed well////////////
    <?php if (isset($_SESSION['NIC'])) : ?>
        
        <h6>welcome <?php echo $_SESSION['NIC']; ?></h6>

        <button><a href="PassengerHome.php?logout='1'"></a></button>
        
    <?php endif ?>
	
</body>
</html>