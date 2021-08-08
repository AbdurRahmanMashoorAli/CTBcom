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
    <tr><th>No Plate</th>
    <th>No Seats</th>
    <th>Route No</th>
    </tr>
    <?php 
    $conn= mysqli_connect("localhost","root","","ctbcomsystem");
    $sql = "SELECT ResNo,ReservedTime,NoofRes,NIC FROM busdetails";
    $result = $conn->query($sql);

    if ($result->num_rows > 0){
        while ($row = $result-> fetch_assoc()) {
            echo "<tr><tb>". $row["ResNo"]. "</td><td>". $row["ReservedTime"]. "</tb><td>". $row["NoofRes"]. "</tb><td>" .$row["NIC"]. "</td> </tr>";

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