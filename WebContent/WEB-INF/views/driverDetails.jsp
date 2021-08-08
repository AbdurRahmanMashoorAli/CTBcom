<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style type="text/css">
    table{
        border-collapse: collapse;
        width: 100%;
        color: #eb4034;
        font-family: monospace;
        font-size:25px;
        text-align: left;
    }
    th{
        background-color: #eb4034;
        color: white;
    }
    tr:nth-(childeven) {
        background-color: #ededed;
    }

</style>
	
</head>
<body>
	 <table>
    <tr><th>Driver Licean</th>
    <th>NIC</th>
    <th>Name</th>
    <th>Email</th>
    </tr>
    <?php 
    $conn= mysqli_connect("localhost","root","","ctbcomsystem");
    $sql = "SELECT DLicNo,NIC,Dname,Email FROM driverdetails";
    $result = $conn->query($sql);

    if ($result->num_rows > 0){
        while ($row = $result-> fetch_assoc()) {
            echo "<tr><tb>". $row["DLicN"]. "</td><td>". $row["NIC"]. "</tb><td>". $row["Name"]. "</td><td>".$row["Email"]. "</td> </tr>";

        }
    }
    else {
        echo "no results found";
    }
    $conn-> close();
    ?>
    </table>
</body>
</html>