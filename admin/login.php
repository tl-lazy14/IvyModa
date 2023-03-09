<?php
session_start();
include_once('../config/connectDB.php');

if (isset($_SESSION["account"]) && isset($_SESSION["password"])) {
    header('location:index.php');
}

$error = "";
$account = "";
$password = "";
if (isset($_POST["submit"])) {
    if (empty($_POST["nameAccount"]) && empty($_POST["password"])) {
        $error = "Bạn chưa nhập tên tài khoản và mật khẩu!";
    }

    if (empty($_POST["nameAccount"]) && !empty($_POST["password"])) {
        $error = "Bạn chưa nhập tên tài khoản!";
        $password = $_POST["password"];
    }
    if (empty($_POST["password"]) && !empty($_POST["nameAccount"])) {
        $error = "Bạn chưa nhập mật khẩu!";
        $account = $_POST["nameAccount"];
    }

    if (!empty($_POST["nameAccount"]) && !empty($_POST["password"])) {
        $account = $_POST["nameAccount"];
        $password = $_POST["password"];
        $sql = "SELECT * FROM admin WHERE tenTK='$account' AND matKhau='$password'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $_SESSION["account"] = $account;
            $_SESSION["password"] = $password;
            header('location:index.php');
        }
        else {
            $error = "Tài khoản hoặc mật khẩu chưa đúng!";
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devide-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../CSS/admin.css">
    <title>Ivy Moda - Đăng nhập hệ thống</title>
</head>

<body class="login-page">
    <img src="../images/logo.png" alt="brand">
    <form method="post" autocomplete="off">
    <div class="form-login">
        <h1>Đăng nhập</h1>
        <label for="nameAccount">Tên đăng nhập</label><br>
        <input type="text" name="nameAccount" id="name" value="<?php echo $account ?>"><br>
        <label for="password">Mật khẩu</label><br>
        <input type="password" name="password" id="pw" value="<?php echo $password ?>"><br>
        <p class="error-login"><?php echo $error ?></p>
        <input type="submit" name="submit" value="Đăng nhập">
    </div>
    </form>
</body>
</html>