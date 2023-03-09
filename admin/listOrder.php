<div class="showListOrder">
    <h1>Danh sách đơn hàng</h1>
    <div class="list-order">
        <table>
            <tr>
                <th>Thứ tự</th>
                <th>Tên khách hàng</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th>Tỉnh/Thành</th>
                <th>Quận/Huyện</th>
                <th>Phường/Xã</th>
                <th>Địa chỉ chi tiết</th>
                <th>Ngày đặt hàng</th>
                <th>Tổng tiền</th>
                <th>Chi tiết đơn hàng</th>
            </tr>
        <?php
        $currentPage = isset($_GET["page"]) ? (int)$_GET["page"] : 1;
        $offset = 10 * ($currentPage - 1);
        $sqlListOrder = "SELECT * FROM don_hang ORDER BY ngayDatHang DESC LIMIT 10 OFFSET $offset";
        $sqlTotalOrder = "SELECT * FROM don_hang";
        $listOrder = mysqli_query($conn, $sqlListOrder);
        $totalOrder = mysqli_query($conn, $sqlTotalOrder);
        $id = $offset;
        while ($row = mysqli_fetch_assoc($listOrder)) {
            $timeOrder = substr($row["ngayDatHang"], 8, 2) . "/" . substr($row["ngayDatHang"], 5, 2) . "/" . substr($row["ngayDatHang"], 0, 4)
                         . " " . substr($row["ngayDatHang"], 11, 2) . ":" . substr($row["ngayDatHang"], 14, 2);
        ?>
            <tr>
                <td><?php echo ++$id ?></td>
                <td><?php echo $row["hoTen"] ?></td>
                <td><?php echo $row["soDienThoai"] ?></td>
                <td><?php echo $row["email"] ?></td>
                <td><?php echo $row["tinhThanh"] ?></td>
                <td><?php echo $row["quanHuyen"] ?></td>
                <td><?php echo $row["phuongXa"] ?></td>
                <td><?php echo $row["diaChi"] ?></td>
                <td><?php echo $timeOrder ?></td>
                <td><strong><?php echo addDotPrice($row["tongTienHang"]) ?>đ</strong></td>
                <td class="td-info-order"><a class="detail-order" href="index.php?page_layout=chitietDH&idDonHang=<?php echo $row["idDonHang"] ?>"><span>Xem chi tiết</span></a></td>
            </tr>
        <?php
        }
        ?>
        </table>
    </div>
    <?php include 'pagination.php' ?>
</div>