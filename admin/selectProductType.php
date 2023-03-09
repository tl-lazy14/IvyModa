<?php session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../CSS/admin.css">
</head>

<?php
include_once('../config/connectDB.php');
$danhMuc = $_GET["tenDM"];
?>

<label>Loại sản phẩm</label><br>
<select name="loaiSP" id="loaiSP">
    <?php
    $sqlLoaiSP = "SELECT loaiSanPham FROM danh_muc WHERE tenDanhMuc = '$danhMuc'";
    $queryLoaiSP = mysqli_query($conn, $sqlLoaiSP);
    while ($row = mysqli_fetch_array($queryLoaiSP)) {
    ?>
    <option value="<?php echo $row["loaiSanPham"] ?>"><?php echo $row["loaiSanPham"] ?></option>
    <?php } ?>
</select>
<span class="error">*</span><br><br>