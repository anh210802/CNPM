<?php
$host = "localhost";
$username = "root";
$password = "";
$dbname = "smart_print";

// Create connection

$conn = new mysqli($host, $username, $password, $dbname);
function checkaccout($check) {
    if($check == 1){
        return 1;
    }else{
        return 0;
    }
}
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}else{
    session_start();
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $username = $_POST['username'];
        $password = $_POST['password'];

        $sql = "SELECT * FROM admin WHERE username_admin = '$username' AND password_admin = '$password'";
        $result = $conn->query($sql);

        if ($result->num_rows == 1) {
            // Đăng nhập thành công
            $_SESSION['username_admin'] = $username;
            header("location: menu_admin.php");
        } else { 
            $txt_error = "Tài khoản hoặc mật khẩu sai. Vui lòng nhập lại!";
            header("location: login_admin_error.php");
        }
    }
    $conn->close();
}
?>
