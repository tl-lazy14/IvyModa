<?php
    $danhMucErr = $tenSPErr = $maSPErr = $giaSPErr = $mauSPErr = $anhMauSPErr = $anhSP1Err =
    $anhSP2Err = $dongSPErr = $kieuDangErr = $doDaiErr = $hoaTietErr = $chatLieuErr = "";

    $danhMuc = $loaiSP = $tenSP = $maSP = $giaSP = $mauSP = $anhMauSP = $anhSP1 = $anhSP2 =
    $anhSP3 = $anhSP4 = $gioiThieuSP = $dongSP = $kieuDang = $doDai = $hoaTiet = $chatLieu = "";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if ($_POST["danhMuc"] == "unselect") {
            $danhMucErr = "Bạn chưa chọn tên danh mục";
        } else {
            $danhMuc = $_POST["danhMuc"];
        }
       
        if (isset($_POST["loaiSP"])) {
            $loaiSP = $_POST["loaiSP"];
        }

        if (empty($_POST["tenSP"])) {
            $tenSPErr = "Bạn chưa nhập tên sản phẩm";
        } else {
            $tenSP = test_input($_POST["tenSP"]);
        }

        if (empty($_POST["maSP"])) {
            $maSPErr = "Bạn chưa nhập mã sản phẩm";
        } else {
            $maSP = test_input($_POST["maSP"]);
        }

        if (empty($_POST["giaSP"])) {
            $giaSPErr = "Bạn chưa nhập giá sản phẩm";
        } else {
            $giaSP = (int)test_input($_POST["giaSP"]);
        }

        if (empty($_POST["mauSP"])) {
            $mauSPErr = "Bạn chưa nhập tên màu sản phẩm";
        } else {
            $mauSP = test_input($_POST["mauSP"]);
        }

        if ($_FILES["anhMauSP"]["name"] == "") {
            $anhMauSPErr = "Tải lên ảnh màu sản phẩm";
        } else {
            $anhMauSPErr = "Tải lên ảnh màu sản phẩm";
            $anhMauSP = $_FILES["anhMauSP"]["name"];
            $tmpColor = $_FILES["anhMauSP"]["tmp_name"];
        }

        if ($_FILES["anhSP1"]["name"] == "") {
            $anhSP1Err = "Tải lên hình ảnh sản phẩm";
        } else {
            $anhSP1Err = "Tải lên hình ảnh sản phẩm";
            $anhSP1 = $_FILES["anhSP1"]["name"];
            $tmpSP1 = $_FILES["anhSP1"]["tmp_name"];
        }

        if ($_FILES["anhSP2"]["name"] == "") {
            $anhSP2Err = "Tải lên hình ảnh sản phẩm";
        } else {
            $anhSP2Err = "Tải lên hình ảnh sản phẩm";
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
        } else {
            $dongSP = test_input($_POST["dongSP"]);
        }

        if (empty($_POST["kieuDang"])) {
            $kieuDangErr = "Bạn chưa nhập kiểu dáng sản phẩm";
        } else {
            $kieuDang = test_input($_POST["kieuDang"]);
        }

        if (empty($_POST["doDai"])) {
            $doDaiErr = "Bạn chưa nhập độ dài sản phẩm";
        } else {
            $doDai = test_input($_POST["doDai"]);
        }

        if (empty($_POST["hoaTiet"])) {
            $hoaTietErr = "Bạn chưa nhập họa tiết sản phẩm";
        } else {
            $hoaTiet = test_input($_POST["hoaTiet"]);
        }

        if (empty($_POST["chatLieu"])) {
            $chatLieuErr = "Bạn chưa nhập chất liệu sản phẩm";
        } else {
            $chatLieu = test_input($_POST["chatLieu"]);
        }

        if (!empty($danhMuc) && isset($loaiSP) && !empty($tenSP) && !empty($maSP) && !empty($giaSP) && !empty($mauSP) && !empty($anhMauSP) &&
        !empty($anhSP1) && !empty($anhSP2) && !empty($dongSP) && !empty($kieuDang) && !empty($doDai) && !empty($hoaTiet) && !empty($chatLieu)) {
            move_uploaded_file($tmpColor, '../images/colors/'.$anhMauSP);
            move_uploaded_file($tmpSP1, '../images/'.$anhSP1);
            move_uploaded_file($tmpSP2, '../images/'.$anhSP2);
            if (!empty($anhSP3)) move_uploaded_file($tmpSP3, '../images/'.$anhSP3);
            if (!empty($anhSP4)) move_uploaded_file($tmpSP4, '../images/'.$anhSP4);

            $sql1 = "ALTER TABLE san_pham AUTO_INCREMENT = 1";
            $query1 = mysqli_query($conn, $sql1);

            $sql2 = "INSERT INTO san_pham (tenSP, maSP, giaSP, mauSP, anhMauSP, anhSP1, anhSP2, anhSP3, anhSP4, gioithieuSP, dongSP, kieuDang, doDai, hoaTiet, chatLieu) 
            VALUES ('$tenSP', '$maSP', '$giaSP', '$mauSP', '$anhMauSP', '$anhSP1', '$anhSP2', '$anhSP3', '$anhSP4', '$gioiThieuSP', '$dongSP', '$kieuDang', '$doDai', '$hoaTiet', '$chatLieu')";
            $query2 = mysqli_query($conn, $sql2);

            $sql3 = "SELECT * FROM danh_muc WHERE tenDanhMuc = '$danhMuc' AND loaiSanPham = '$loaiSP'";
            $query3 = mysqli_query($conn, $sql3);
            $row3 = mysqli_fetch_assoc($query3);
            $idDM = $row3["idDanhMuc"];

            $sql4 = "SELECT * FROM san_pham WHERE tenSP = '$tenSP' AND maSP = '$maSP'";
            $query4 = mysqli_query($conn, $sql4);
            $row4 = mysqli_fetch_assoc($query4);
            $idSP = $row4["idSP"];

            $sql5 = "INSERT INTO danh_muc_san_pham (idDanhMuc, idSP)  VALUES ($idDM, $idSP)";
            $query5 = mysqli_query($conn, $sql5);
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

<div class="add-product">
    <h1>Thêm sản phẩm</h1>
    <form id="formAddProduct" method="post" autocapitalize="on" autocomplete="off" enctype="multipart/form-data"> 
    <div class="form-add-product">
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
        <span class="error">* <?php echo $anhMauSPErr;?></span><br><br>

        <label>Ảnh sản phẩm (1)</label><br>
        <input type="file" name="anhSP1">
        <span class="error">* <?php echo $anhSP1Err;?></span><br><br>

        <label>Ảnh sản phẩm (2)</label><br>
        <input type="file" name="anhSP2">
        <span class="error">* <?php echo $anhSP2Err;?></span><br><br>

        <label>Ảnh sản phẩm (3)</label><br>
        <input type="file" name="anhSP3"><br><br>

        <label>Ảnh sản phẩm (4)</label><br>
        <input type="file" name="anhSP4"><br><br>

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

        <label>Thuộc danh mục</label><br>
        <select name="danhMuc" onchange="selectProductType(this.value)">
            <option value="unselect" selected>Lựa chọn danh mục chứa sản phẩm</option>
            <?php
            $sqlDM = "SELECT DISTINCT tenDanhMuc FROM danh_muc";
            $queryDM = mysqli_query($conn, $sqlDM);
            while ($row = mysqli_fetch_array($queryDM)) {
            ?>
            <option value="<?php echo $row["tenDanhMuc"] ?>"><?php echo $row["tenDanhMuc"] ?></option>
            <?php } ?>
        </select>
        <span class="error">* <?php echo $danhMucErr;?></span><br><br>

        <div id="productType"></div>
        <input type="submit" name="submit" value="Thêm mới">
    </div>
    </form>
</div>

<script>
    function selectProductType(str) {
        if (str == "unselect") {
            document.getElementById("productType").innerHTML = "";
            return;
        }
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange=function() {
            if (this.readyState==4 && this.status==200) {
                document.getElementById("productType").innerHTML=this.responseText;
            }
        }
        xmlhttp.open("GET","selectProductType.php?tenDM="+str,true);
        xmlhttp.send();
    }
</script>