<div class="detailOrder">
    <?php 
        $idDH = $_GET["idDonHang"];
        $sql1 = "SELECT * FROM don_hang WHERE idDonHang = $idDH";
        $query1 = mysqli_query($conn, $sql1);
        $row1 = mysqli_fetch_assoc($query1);

        $timeOrder = substr($row1["ngayDatHang"], 8, 2) . "/" . substr($row1["ngayDatHang"], 5, 2) . "/" . substr($row1["ngayDatHang"], 0, 4)
                         . " " . substr($row1["ngayDatHang"], 11, 2) . ":" . substr($row1["ngayDatHang"], 14, 2);
    ?>
    <h1>Chi tiết đơn hàng</h1>
    <div class="info-order">
        <p><span>Khách hàng:</span> <?php echo $row1["hoTen"] ?></p>
        <p><span>Số điện thoại:</span> <?php echo $row1["soDienThoai"] ?></p>
        <p><span>Ngày đặt hàng:</span> <?php echo $timeOrder ?></p>
        <p><span>Tổng tiền:</span> <?php echo addDotPrice($row1["tongTienHang"]) ?>đ</p>
    </div>
    <div>
        <table>
            <tr>
                <th>Thứ tự</th>
                <th style="width:200px;">Sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Màu</th>
                <th>Size</th>
                <th>Số lượng</th>
                <th>Thành tiền</th>
            </tr>
        <?php
        $id = 0;
        $sql2 = "SELECT * FROM (chi_tiet_hoa_don INNER JOIN don_hang ON chi_tiet_hoa_don.idDonHang = don_hang.idDonHang)
                INNER JOIN san_pham ON chi_tiet_hoa_don.idSanPham = san_pham.idSP WHERE chi_tiet_hoa_don.idDonHang = $idDH";
        $query2 = mysqli_query($conn, $sql2);
        while ($row2 = mysqli_fetch_assoc($query2)) {
        ?>
            <tr>
                <td><?php echo ++$id ?></td>
                <td><img src="../images/<?php echo $row2["anhSP1"] ?>" width="150px"></td>
                <td><?php echo $row2["tenSP"] ?></td>
                <td><img src="../images/colors/<?php echo $row2["anhMauSP"] ?>"></td>
                <td><?php echo $row2["size"] ?></td>
                <td><?php echo $row2["soLuong"] ?></td>
                <td><strong><?php echo addDotPrice($row2["thanhTien"]) ?>đ</strong></td>
            </tr>
        <?php
        }
        ?>
        </table>
    </div>
    <button class="back-button" onclick="window.location.assign('index.php?page_layout=don_hang');">Quay lại</button>
</div>