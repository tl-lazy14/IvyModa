<?php
    $tenDMErr = $nhomSPErr = $loaiSPErr = "";

    $idDM = $_GET["idDanhMuc"];
    $sql1 = "SELECT * FROM danh_muc WHERE idDanhMuc = $idDM";
    $query1 = mysqli_query($conn, $sql1);
    $row = mysqli_fetch_assoc($query1);

    $tenDM = $row["tenDanhMuc"];
    $nhomSP = $row["nhomSanPham"];
    $loaiSP = $row["loaiSanPham"];

    if (isset($_POST["submit"])) {
        if (empty($_POST["tenDM"])) {
            $tenDMErr = "Bạn chưa nhập tên danh mục";
            $tenDM = "";
        } else {
            $tenDM = test_input($_POST["tenDM"]);
        }

        if (empty($_POST["nhomSP"])) {
            $nhomSPErr = "Bạn chưa nhập nhóm sản phẩm";
            $nhomSP = "";
        } else {
            $nhomSP = test_input($_POST["nhomSP"]);
        }

        if (empty($_POST["loaiSP"])) {
            $loaiSPErr = "Bạn chưa nhập loại sản phẩm";
            $loaiSP = "";
        } else {
            $loaiSP = test_input($_POST["loaiSP"]);
        }

        if (!empty($tenDM) && !empty($nhomSP) && !empty($loaiSP)) {
            $sql2 = "UPDATE danh_muc SET tenDanhMuc = '$tenDM', nhomSanPham = '$nhomSP', loaiSanPham = '$loaiSP' WHERE idDanhMuc = $idDM";
            $query2 = mysqli_query($conn, $sql2);
            header('location:index.php?page_layout=danhsachDM');
        }
    }

    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
?>

<div class="edit-category add-category">
    <h1>Sửa thông tin danh mục</h1>
    <form method="post" autocapitalize="on" autocomplete="off" enctype="multipart/form-data"> 
    <div class="form-edit-category form-add-category">
        <label>Tên danh mục</label><br>
        <input type="text" name="tenDM" value="<?php echo $tenDM;?>">
        <span class="error">* <?php echo $tenDMErr;?></span><br><br>

        <label>Nhóm sản phẩm</label><br>
        <input type="text" name="nhomSP" value="<?php echo $nhomSP;?>">
        <span class="error">* <?php echo $nhomSPErr;?></span><br><br>

        <label>Loại sản phẩm</label><br>
        <input type="text" name="loaiSP" value="<?php echo $loaiSP;?>">
        <span class="error">* <?php echo $loaiSPErr;?></span><br><br>

        <input type="submit" name="submit" value="Cập nhật thông tin">
    </div>
    </form>
</div>