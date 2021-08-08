<?php

session_start();

$username = "";
$email = "";
$nic = "";
$telephone = "";
$password = "";
$errors = array();

$db = mysqli_connect("localhost", "root", "", "ctbcomsystem") or die("could not connect to the database");

//Passenger Register page
if (isset($_POST['btn-PassengerRegister'])) {

    $username = mysqli_real_escape_string($db, $_POST['txtUname']);
    $nic = mysqli_real_escape_string($db, $_POST['txtNic']);
    $email = mysqli_real_escape_string($db, $_POST['txtEmail']);
    $telephone = mysqli_real_escape_string($db, $_POST['txtTelePhone']);
    $password_1 = mysqli_real_escape_string($db, $_POST['txtPassword1']);
    $password_2 = mysqli_real_escape_string($db, $_POST['txtPassword2']);

    if (empty($username)) {
        array_push($errors, "user name is required");
    }
    if (empty($nic)) {
        array_push($errors, "NIC is required");
    }
    if (empty($email)) {
        array_push($errors, "user email is required");
    }
    if (empty($telephone)) {
        array_push($errors, "TelePhone number is required");
    }
    if (empty($password_1)) {
        array_push($errors, "password is required");
    }
    if (empty($password_2)) {
        array_push($errors, "re-type the password to confirm");
    }
    if ($password_1 != $password_2) {
        array_push($errors, "The two password do not match");
    }


    $user_check_query = "SELECT * FROM passengerdetails WHERE NIC = '$nic' OR Uname = '$username' OR Email = '$email' LIMIT 1";

    $result = mysqli_query($db, $user_check_query);

    $user = mysqli_fetch_assoc($result);

    //if user exist with the same UserName or Email or NIC
    if ($user) {

            if ($user['Uname'] === $username) {
            array_push($errors, "user already exists");
            }
            if ($user['NIC'] === $nic) {
                array_push($errors, "user already exists");
            }

            if ($user['Email'] === $email) {
                array_push($errors, "email already exists");
            }
    }
    if (count($errors) == 0) {

        $password = md5($password_1); //encript the password before saving in the database
        print $password;

        $query = "INSERT INTO passengerdetails(NIC, Uname, Email, TelePhone, ppassword) VALUES('$NIC', '$username', '$email', '$telephone', '$password')";

        mysqli_query($db, $query);

        $_SESSION['NIC'] = $NIC;
        $_SESSION['success'] = "you are logged in";
        header("location: PassengerHome.php");
    }
}

//Passenger Login page
if (isset($_POST['btn-PassengerLogin'])) {

    $nic = mysqli_real_escape_string($db, $_POST['txtNic']);
    $password = mysqli_real_escape_string($db, $_POST['txtPassword']);

    if (empty($nic)) {
        array_push($errors, "NIC is required");
    }
    if (empty($password)) {
        array_push($errors, "Password is required");
    }

    if (count($errors) == 0) {

        $password = md5($password);

        $query = "SELECT * FROM passengerdetails WHERE NIC='$nic' AND ppassword='$password'";
        $results = mysqli_query($db, $query);

        if (mysqli_num_rows($results)) {

            $_SESSION['NIC'] = $nic;
            $_SESSION['success'] = "Logged in successfully";
            header('location: PassengerHome.php');
        } else {
            array_push($errors, "Wrong user name or password enterd. Please try again.");
        }
    }
}


///Driver and Conducter Register Page
if (isset($_POST['btn-driverandConducterRegister'])) {

    $licno = mysqli_real_escape_string($db, $_POST['txtLicNo']);
    $username = mysqli_real_escape_string($db, $_POST['txtUname']);
    $nic = mysqli_real_escape_string($db, $_POST['txtNic']);
    $email = mysqli_real_escape_string($db, $_POST['txtEmail']);
    $driORcon = mysqli_real_escape_string($db, $_POST['txtDriOrCon']);
    $password_1 = mysqli_real_escape_string($db, $_POST['txtpassword1']);
    $password_2 = mysqli_real_escape_string($db, $_POST['txtpassword2']);

    if (empty($licno)) {
        array_push($errors, "Licen number is required");
    }
    if (empty($username)) {
        array_push($errors, "user name is required");
    }
    if (empty($nic)) {
        array_push($errors, "NIC is required");
    }
    if (empty($email)) {
        array_push($errors, "user email is required");
    }
    if (empty($driORcon)) {
        array_push($errors, "Enter Driver or Conducter is required");
    }
    if (empty($password_1)) {
        array_push($errors, "password is required");
    }
    if ($password_1 != $password_2) {
        array_push($errors, "The two password do not match");
    }

    //choosing the employee type whethar driver or conducter

    if ($driORcon = "driver") {
        $user_check_query = "SELECT * FROM driverdetails WHERE Dname = $username OR Email = $email OR NIC = $nic LIMIT 1";
    } elseif ($driORcon = "conducter") {
        $user_check_query = "SELECT * FROM conducterdetails WHERE ConName = $username OR ConEmail = $email OR NIC = $nic LIMIT 1";
    } else {
        array_push($errors, "select Driver or Conducter");
    }


    $result = mysqli_query($db, $user_check_query);

    $user = mysqli_fetch_assoc($result);

    //if user exist with the same UserName or Email
    if ($user) {

        if ($user['Dname'] === $username || $user['ConName'] === $username) {
            array_push($errors, "user already exists");
        }
        if ($user['Email'] === $email  || $user['ConEmail'] === $email) {
            array_push($errors, "email already exists");
        }
        if ($user['NIC'] === $nic) {
            array_push($errors, "NIC already exists");
        }
    }

    //when no errors
    if (count($errors) == 0) {

        $password = md5($password_1); //encript the password before saving in the database
        print $password;

        if ($driORcon = "driver") {
            $query = "INSERT INTO driverdetails(DLicNo, Dname, NIC, Email, Dpassword) VALUES('$licno', '$username', '$nic', '$email', '$password')";

            mysqli_query($db, $query);

            $_SESSION['Dname'] = $username;
            $_SESSION['success'] = "new driver added";
        } elseif ($driORcon = "conducter") {
            $query = "INSERT INTO conducterdetails(ConLicNo, NIC, ConName, ConEmail, ConPassword) VALUES('$licno', '$nic', '$username', '$email', '$password') ";

            mysqli_query($db, $query);

            $_SESSION['ConName'] = $username;
            $_SESSION['success'] = "new conducter added";
        } else {
            array_push($errors, "Re-cheack the Text box values");
        }

        session_abort();
    }
}



////Driver Login Page
if (isset($_POST['btn-DriLogin'])) {

    $licno = mysqli_real_escape_string($db, $_POST['txtLicNo']);
    $password = mysqli_real_escape_string($db, $_POST['txtPassword']);

    if (empty($licno)) {
        array_push($errors, "Licen number is required");
    }
    if (empty($password)) {
        array_push($errors, "Password is required");
    }

    if (count($errors) == 0) {

        $password = md5($password);

        $query = "SELECT * FROM driverdetails WHERE DLicNo='$licno' AND Dpassword='$password' ";
        $results = mysqli_query($db, $query);

        if (mysqli_num_rows($results)) {

            $_SESSION['DLicNo'] = $licno;
            $_SESSION['success'] = "Logged in successfully";
            header('location: DriverandConducterHome.php');
        } else {
            array_push($errors, "Wrong user name or password enterd. Please try again.");
        }
    }
}
//////////Conducter Login Page

if (isset($_POST['btn-ConLogin'])) {

    $licno = mysqli_real_escape_string($db, $_POST['txtLicNo']);
    $password = mysqli_real_escape_string($db, $_POST['txtPassword']);

    if (empty($licno)) {
        array_push($errors, "User Name is required");
    }
    if (empty($password)) {
        array_push($errors, "Password is required");
    }

    if (count($errors) == 0) {

        $password = md5($password);

        $query = "SELECT * FROM conducterdetails WHERE ConLicNo='$licno' AND ConPassword='$password' ";
        $results = mysqli_query($db, $query);

        if (mysqli_num_rows($results)) {

            $_SESSION['ConLicNo'] = $licno;
            $_SESSION['success'] = "Logged in successfully";
            header('location: DriverandConducterHome.php');
        } else {
            array_push($errors, "Wrong user name or password enterd. Please try again.");
        }
    }
}



////Administrater Register Page

if (isset($_POST['btn-administraterRegister'])) {

    $adminId = mysqli_real_escape_string($db, $_POST['txtID']);
    $username = mysqli_real_escape_string($db, $_POST['txtUname']);
    $nic = mysqli_real_escape_string($db, $_POST['txtNic']);
    $email = mysqli_real_escape_string($db, $_POST['txtEmail']);
    $password_1 = mysqli_real_escape_string($db, $_POST['txtpassword1']);
    $password_2 = mysqli_real_escape_string($db, $_POST['txtpassword2']);

    if (empty($adminId)) {
        array_push($errors, "Administrative ID is required");
    }
    if (empty($username)) {
        array_push($errors, "user name is required");
    }
    if (empty($email)) {
        array_push($errors, "user email is required");
    }
    if (empty($nic)) {
        array_push($errors, "NIC is required");
    }
    if (empty($password_1)) {
        array_push($errors, "password is required");
    }
    if ($password_1 != $password_2) {
        array_push($errors, "The two password do not match");
    }


    $user_check_query = "SELECT * FROM administrativedetails WHERE AdminID = '$adminId' OR AdEmail = '$email' OR AdminNIC = '$nic' LIMIT 1";

    $result = mysqli_query($db, $user_check_query);

    $user = mysqli_fetch_assoc($result);

    //if user exist with the same UserName or Email
    if ($user) {

        if ($user['AdminID'] === $adminId) {
            array_push($errors, "user already exists");
        }

        if ($user['AdEmail'] === $email) {
            array_push($errors, "email already exists");
        }

        if ($user['AdminNIC'] === $nic) {
            array_push($errors, "NIC already exists");
        }
    }

    //when no errors
    if (count($errors) == 0) {

        $password = md5($password_1); //encript the password before saving in the database
        print $password;

        $query = "INSERT INTO administrativedetalis(AdminID, AdminNIC, AdName, AdEmail, Adpassword) VALUES('$adminId', '$nic', '$username', '$email', '$password')";

        mysqli_query($db, $query);

        $_SESSION['AdName'] = $username;
        $_SESSION['success'] = "you are logged in";
        session_destroy();
    }
}

////Administrater Login Page
if (isset($_POST['btn-AdminLogin'])) {

    $adminId = mysqli_real_escape_string($db, $_POST['txtID']);
    $password = mysqli_real_escape_string($db, $_POST['txtPassword']);

    if (empty($adminId)) {
        array_push($errors, "Admin ID is required");
    }
    if (empty($password)) {
        array_push($errors, "Password is required");
    }

    if (count($errors) == 0) {

        $password = md5($password);

        $query = "SELECT * FROM administrativedetails WHERE AdminID='$adminId' AND Adpassword='$password' ";
        $results = mysqli_query($db, $query);

        if (mysqli_num_rows($results)) {

            $_SESSION['AdminID'] = $adminId;
            $_SESSION['success'] = "Logged in successfully";
            header('location: AdministrationHome.php');
        } else {
            array_push($errors, "Wrong user name or password enterd. Please try again.");
        }
    }
}
?>