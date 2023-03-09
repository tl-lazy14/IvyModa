<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devide-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/style.css">
    <title>Category</title>
</head>

<body>
<?php
    include_once 'giaodien/header.php';
?>
<!--------------Category-->
<section class="category">
    <?php
    if ($_GET["chucnang"] == "showDM") {
    ?>
    <div class="container">
        <div class="category-top row">
        <?php
            $idDM = $_GET["idDanhMuc"];
            $sql = "SELECT * FROM danh_muc WHERE idDanhMuc = $idDM";
            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($result);
        ?>
            <a href="index.php">Trang chủ</a> <span>&#10230; </span> <p><?php echo $row["tenDanhMuc"]?></p> <span>&#10230;</span> <p><?php echo $row["loaiSanPham"]?></p>
        </div>
    </div>
    <?php
    }
    ?>

    <div class="container">
        <div class="row">
            <div class="category-left">
                <ul>
                <?php
                    $sqlDM = "SELECT DISTINCT tenDanhMuc FROM danh_muc";
                    $resultDM = mysqli_query($conn, $sqlDM);
                    while ($rowDM = mysqli_fetch_assoc($resultDM)) {
                ?>
                    <li class="category-left-li"><span><?php echo $rowDM["tenDanhMuc"]?></span>
                        <ul>
                        <?php
                            $dM = $rowDM["tenDanhMuc"];
                            $sql4 = "SELECT * FROM danh_muc WHERE tenDanhMuc = '$dM'";
                            $loaiSP = mysqli_query($conn, $sql4);
                            if (mysqli_num_rows($loaiSP) > 0) {
                                while ($row4 = mysqli_fetch_assoc($loaiSP)) {
                        ?>
                            <li><a href="index.php?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $row4["idDanhMuc"]?>"><?php echo $row4["loaiSanPham"]?></a></li>
                        <?php
                                }
                            }
                        ?>
                        </ul>
                    </li>
                <?php
                    }
                ?>
                </ul>
            </div>

            <div class="category-right">
            <?php
            if ($_GET["chucnang"] == "showDM") include_once 'chucnang/showListProduct.php';
            else if ($_GET["chucnang"] == "timkiem") include_once 'chucnang/searchProduct.php';
            ?>
            <?php include_once 'chucnang/pagination.php'?>
            </div>
        </div>
    </div>
</section>

<?php
    include_once 'giaodien/footer.php';
?>

</body>
<script src="js/script.js"></script>
</html>