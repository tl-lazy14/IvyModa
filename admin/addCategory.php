<?php
    $tenDMErr = $nhomSPErr = $loaiSPErr = "";
    $tenDM = $nhomSP = $loaiSP = "";

    if (isset($_POST["submit"])) {
        if (empty($_POST["tenDM"])) {
            $tenDMErr = "Bạn chưa nhập tên danh mục";
        } else {
            $tenDM = test_input($_POST["tenDM"]);
        }

        if (empty($_POST["nhomSP"])) {
            $nhomSPErr = "Bạn chưa nhập nhóm sản phẩm";
        } else {
            $nhomSP = test_input($_POST["nhomSP"]);
        }

        if (empty($_POST["loaiSP"])) {
            $loaiSPErr = "Bạn chưa nhập loại sản phẩm";
        } else {
            $loaiSP = test_input($_POST["loaiSP"]);
        }

        if (!empty($tenDM) && !empty($nhomSP) && !empty($loaiSP)) {
            $sql1 = "ALTER TABLE danh_muc AUTO_INCREMENT = 1";
            $query1 = mysqli_query($conn, $sql1);
            $sql2 = "INSERT INTO danh_muc (tenDanhMuc, nhomSanPham, loaiSanPham) VALUES ('$tenDM', '$nhomSP', '$loaiSP')";
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

<div class="add-category">
    <h1>Thêm danh mục</h1>
    <form method="post" autocapitalize="on" autocomplete="off" enctype="multipart/form-data"> 
    <div class="form-add-category">
        <label>Tên danh mục</label><br>
        <input type="text" name="tenDM" value="<?php echo $tenDM;?>">
        <span class="error">* <?php echo $tenDMErr;?></span><br><br>

        <label>Nhóm sản phẩm</label><br>
        <input type="text" name="nhomSP" value="<?php echo $nhomSP;?>">
        <span class="error">* <?php echo $nhomSPErr;?></span><br><br>

        <label>Loại sản phẩm</label><br>
        <input type="text" name="loaiSP" value="<?php echo $loaiSP;?>">
        <span class="error">* <?php echo $loaiSPErr;?></span><br><br>

        <input type="submit" name="submit" value="Thêm mới">
    </div>
    </form>
</div>