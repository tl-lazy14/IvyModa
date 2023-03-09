<?php
session_start();
include_once('../config/connectDB.php');

function addDotPrice($price) {
    $str = (string)$price;
    $str = strrev($str);
    $res = "";
    for ($x = 0; $x < strlen($str); $x++) {
        $res .= $str[$x];
        if ($x % 3 == 2 && $x < strlen($str) - 1) $res .= ".";
    }
    return strrev($res);
}

if (!isset($_SESSION["account"])) header('location:login.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devide-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../CSS/admin.css">
    <title>Ivy Moda - Trang chủ quản trị</title>
</head>

<body>
    <div class="header">
        <ul>
            <li class="logo"><a href="index.php"><img src="../images/logo.png" alt="brand"></a></li>
            <li class="dropdown">
                <p class="items" style="cursor:default;
                <?php if (isset($_GET["page_layout"]) && ($_GET["page_layout"] == "danhsachDM" || $_GET["page_layout"] == "themDM" || $_GET["page_layout"] == "suaDM")) { ?>
                background-color:#282a35;color:white;<?php } ?>">Danh mục</p>
                <div class="dropdown-content">
                    <a href="index.php?page_layout=danhsachDM">Danh sách danh mục</a>
                    <a href="index.php?page_layout=themDM">Thêm danh mục</a>
                </div>
            </li>
            <li class="dropdown">
                <p class="items" style="cursor:default;
                <?php if (isset($_GET["page_layout"]) && ($_GET["page_layout"] == "danhsachSP" || $_GET["page_layout"] == "themSP" || $_GET["page_layout"] == "suaSP")) { ?>background-color:#282a35;color:white;<?php } ?>">Sản phẩm</p>
                <div class="dropdown-content">
                    <a href="index.php?page_layout=danhsachSP">Danh sách sản phẩm</a>
                    <a href="index.php?page_layout=themSP">Thêm sản phẩm</a>
                </div>
            </li>
            <li><a href="index.php?page_layout=don_hang" 
            <?php if (isset($_GET["page_layout"]) && ($_GET["page_layout"] == "don_hang" || $_GET["page_layout"] == "chitietDH")) { ?> style="background-color:#282a35;color:white;" <?php } ?> class="items">Đơn hàng</a></li>  
            <li style="float:right;"><a href="logout.php" class="items">Đăng xuất</a></li>
            <li style="float:right;"><p class="items" style="text-transform:lowercase;cursor:default;"><?php echo $_SESSION["account"]?></p></li>
        </ul>
    </div>
    
    <div class="content">
    <?php
    if (!isset($_GET["page_layout"])) include('welcome.php');
    else if ($_GET["page_layout"] == "danhsachDM") include('listCategory.php');
    else if ($_GET["page_layout"] == "themDM") include('addCategory.php');
    else if ($_GET["page_layout"] == "suaDM") include('editCategory.php');
    else if ($_GET["page_layout"] == "danhsachSP") include('listProduct.php');
    else if ($_GET["page_layout"] == "themSP") include('addProduct.php');
    else if ($_GET["page_layout"] == "suaSP") include('editProduct.php');
    else if ($_GET["page_layout"] == "don_hang") include('listOrder.php');
    else if ($_GET["page_layout"] == "chitietDH") include('detailOrder.php');
    ?>
    </div>
</body>

</html>