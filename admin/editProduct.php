<?php
    $tenSPErr = $maSPErr = $giaSPErr = $mauSPErr = $dongSPErr = $kieuDangErr = $doDaiErr = $hoaTietErr = $chatLieuErr = "";

    $idSP = $_GET["idSanPham"];
    $sql1 = "SELECT * FROM san_pham WHERE idSP = $idSP";
    $query1 = mysqli_query($conn, $sql1);
    $row = mysqli_fetch_assoc($query1);

    $tenSP = $row["tenSP"]; 
    $maSP = $row["maSP"];
    $giaSP = $row["giaSP"];
    $mauSP = $row["mauSP"];
    $anhMauSP = $row["anhMauSP"];
    $anhSP1 = $row["anhSP1"];
    $anhSP2 = $row["anhSP2"];
    $anhSP3 = $row["anhSP3"];
    $anhSP4 = $row["anhSP4"];
    $gioiThieuSP = $row["gioithieuSP"];
    $dongSP = $row["dongSP"];
    $kieuDang = $row["kieuDang"];
    $doDai = $row["doDai"];
    $hoaTiet = $row["hoaTiet"];
    $chatLieu = $row["chatLieu"];

    if (isset($_POST["submit"])) {
        if (empty($_POST["tenSP"])) {
            $tenSPErr = "Bạn chưa nhập tên sản phẩm";
            $tenSP = "";
        } else {
            $tenSP = test_input($_POST["tenSP"]);
        }

        if (empty($_POST["maSP"])) {
            $maSPErr = "Bạn chưa nhập mã sản phẩm";
            $maSP = "";
        } else {
            $maSP = test_input($_POST["maSP"]);
        }

        if (empty($_POST["giaSP"])) {
            $giaSPErr = "Bạn chưa nhập giá sản phẩm";
            $giaSP = "";
        } else {
            $giaSP = (int)test_input($_POST["giaSP"]);
        }

        if (empty($_POST["mauSP"])) {
            $mauSPErr = "Bạn chưa nhập tên màu sản phẩm";
            $mauSP = "";
        } else {
            $mauSP = test_input($_POST["mauSP"]);
        }

        if ($_FILES["anhMauSP"]["name"] != "") {
            $anhMauSP = $_FILES["anhMauSP"]["name"];
            $tmpColor = $_FILES["anhMauSP"]["tmp_name"];
        }

        if ($_FILES["anhSP1"]["name"] != "") {
            $anhSP1 = $_FILES["anhSP1"]["name"];
            $tmpSP1 = $_FILES["anhSP1"]["tmp_name"];
        }

        if ($_FILES["anhSP2"]["name"] != "") {
            $anhSP2 = $_FILES["anhSP2"]["name"];
            $tmpSP2 = $_FILES["anhSP2"]["tmp_name"];
        }

        if ($_FILES["anhSP3"]["name"] != "") {
            $anhSP3 = $_FILES["anhSP3"]["name"];
            $tmpSP3 = $_FILES["anhSP3"]["tmp_name"];
        }

        if ($_FILES["anhSP4"]["name"] != "") {
            $anhSP4 = $_FILES["anhSP4"]["name"];
            $tmpSP4 = $_FILES["anhSP4"]["tmp_name"];
        }

        if (empty($_POST["gioiThieuSP"])) {
            $gioiThieuSP = "";
          } else {
            $gioiThieuSP = test_input($_POST["gioiThieuSP"]);
          }

        if (empty($_POST["dongSP"])) {
            $dongSPErr = "Bạn chưa nhập dòng sản phẩm";
            $dongSP = "";
        } else {
            $dongSP = test_input($_POST["dongSP"]);
        }

        if (empty($_POST["kieuDang"])) {
            $kieuDangErr = "Bạn chưa nhập kiểu dáng sản phẩm";
            $kieuDang = "";
        } else {
            $kieuDang = test_input($_POST["kieuDang"]);
        }

        if (empty($_POST["doDai"])) {
            $doDaiErr = "Bạn chưa nhập độ dài sản phẩm";
            $doDai = "";
        } else {
            $doDai = test_input($_POST["doDai"]);
        }

        if (empty($_POST["hoaTiet"])) {
            $hoaTietErr = "Bạn chưa nhập họa tiết sản phẩm";
            $hoaTiet = "";
        } else {
            $hoaTiet = test_input($_POST["hoaTiet"]);
        }

        if (empty($_POST["chatLieu"])) {
            $chatLieuErr = "Bạn chưa nhập chất liệu sản phẩm";
            $chatLieu = "";
        } else {
            $chatLieu = test_input($_POST["chatLieu"]);
        }

        if (!empty($tenSP) && !empty($maSP) && !empty($giaSP) && !empty($mauSP) &&  !empty($dongSP) && !empty($kieuDang) && !empty($doDai) && !empty($hoaTiet) && !empty($chatLieu)) {
            if($_FILES["anhMauSP"]["name"] != ""){
                move_uploaded_file($tmpColor, '../images/colors/'.$anhMauSP);
            }
            if($_FILES["anhSP1"]["name"] != ""){
                move_uploaded_file($tmpSP1, '../images/'.$anhSP1);
            }
            if($_FILES["anhSP2"]["name"] != ""){
                move_uploaded_file($tmpSP2, '../images/'.$anhSP2);
            }
            if($_FILES["anhSP3"]["name"] != ""){
                move_uploaded_file($tmpSP3, '../images/'.$anhSP3);
            }
            if($_FILES["anhSP4"]["name"] != ""){
                move_uploaded_file($tmpSP4, '../images/'.$anhSP4);
            }

            $sqlUpdate = "UPDATE san_pham SET tenSP = '$tenSP', maSP = '$maSP', giaSP = $giaSP, mauSP = '$mauSP', anhMauSP = '$anhMauSP',
                            anhSP1 = '$anhSP1', anhSP2 = '$anhSP2', anhSP3 = '$anhSP3', anhSP4 = '$anhSP4', gioithieuSP = '$gioiThieuSP',
                            dongSP = '$dongSP', kieuDang = '$kieuDang', doDai = '$doDai', hoaTiet = '$hoaTiet', chatLieu = '$chatLieu'
                          WHERE idSP = $idSP";
            $queryUpdate = mysqli_query($conn, $sqlUpdate);
            header('location:index.php?page_layout=danhsachSP');
        }
    }

    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
?>

<div class="edit-product add-product">
    <h1>Sửa thông tin sản phẩm</h1>
    <form method="post" autocapitalize="on" autocomplete="off" enctype="multipart/form-data"> 
    <div class="form-edit-product form-add-product">
        <label>Tên sản phẩm</label><br>
        <input type="text" name="tenSP" value="<?php echo $tenSP;?>">
        <span class="error">* <?php echo $tenSPErr;?></span><br><br>

        <label>Mã sản phẩm</label><br>
        <input type="text" name="maSP" value="<?php echo $maSP;?>">
        <span class="error">* <?php echo $maSPErr;?></span><br><br>

        <label>Giá sản phẩm (Đơn vị: VND)</label><br>
        <input type="text" name="giaSP" value="<?php echo $giaSP;?>">
        <span class="error">* <?php echo $giaSPErr;?></span><br><br>

        <label>Màu sản phẩm</label><br>
        <input type="text" name="mauSP" value="<?php echo $mauSP;?>">
        <span class="error">* <?php echo $mauSPErr;?></span><br><br>

        <label>Ảnh màu sản phẩm</label><br>
        <input type="file" name="anhMauSP">
        <input type="text"  disabled name="anhMauSP" value="<?php echo $row["anhMauSP"];?>"><br><br>

        <label>Ảnh sản phẩm (1)</label><br>
        <input type="file" name="anhSP1">
        <input type="text"  disabled name="anhSP1" value="<?php echo $row["anhSP1"];?>"><br><br>

        <label>Ảnh sản phẩm (2)</label><br>
        <input type="file" name="anhSP2">
        <input type="text"  disabled name="anhSP2" value="<?php echo $row["anhSP2"];?>"><br><br>

        <label>Ảnh sản phẩm (3)</label><br>
        <input type="file" name="anhSP3">
        <input type="text"  disabled name="anhSP3" value="<?php echo $row["anhSP3"];?>"><br><br>

        <label>Ảnh sản phẩm (4)</label><br>
        <input type="file" name="anhSP4">
        <input type="text"  disabled name="anhSP4" value="<?php echo $row["anhSP4"];?>"><br><br>

        <label>Giới thiệu về sản phẩm</label><br>
        <textarea cols="60" rows="12" name="gioiThieuSP"><?php echo $gioiThieuSP; ?></textarea><br><br>

        <label>Dòng sản phẩm</label><br>
        <input type="text" name="dongSP" value="<?php echo $dongSP;?>">
        <span class="error">* <?php echo $dongSPErr;?></span><br><br>

        <label>Kiểu dáng</label><br>
        <input type="text" name="kieuDang" value="<?php echo $kieuDang;?>">
        <span class="error">* <?php echo $kieuDangErr;?></span><br><br>

        <label>Độ dài</label><br>
        <input type="text" name="doDai" value="<?php echo $doDai;?>">
        <span class="error">* <?php echo $doDaiErr;?></span><br><br>

        <label>Họa tiết</label><br>
        <input type="text" name="hoaTiet" value="<?php echo $hoaTiet;?>">
        <span class="error">* <?php echo $hoaTietErr;?></span><br><br>

        <label>Chất liệu</label><br>
        <input type="text" name="chatLieu" value="<?php echo $chatLieu;?>">
        <span class="error">* <?php echo $chatLieuErr;?></span><br><br>

        <input type="submit" name="submit" value="Cập nhật thông tin">
    </div>
    </form>
</div>