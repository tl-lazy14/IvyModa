<div class="showListProduct">
    <h1>Danh sách sản phẩm</h1>
    <div class="list-product">
        <table>
            <tr>
                <th>Thứ tự</th>
                <th>Tên sản phẩm</th>
                <th>Mã sản phẩm</th>
                <th>Giá sản phẩm</th>
                <th colspan="2">Màu sản phẩm</th>
                <th colspan="4">Ảnh sản phẩm</th>
                <th>Dòng sản phẩm</th>
                <th>Kiểu dáng</th>
                <th>Độ dài</th>
                <th>Họa tiết</th>
                <th>Chất liệu</th>
                <th>Thuộc danh mục</th>
                <th>Loại sản phẩm</th>
                <th colspan="2" style="width:150px;">Quản lý</th>
            </tr>
        <?php
        $currentPage = isset($_GET["page"]) ? (int)$_GET["page"] : 1;
        $offset = 10 * ($currentPage - 1);
        $sqlListProduct = "SELECT * FROM san_pham ORDER BY idSP DESC LIMIT 10 OFFSET $offset";
        $sqlTotalProduct = "SELECT * FROM san_pham";
        $listProduct = mysqli_query($conn, $sqlListProduct);
        $totalProduct = mysqli_query($conn, $sqlTotalProduct);
        $id = $offset;
        while ($row = mysqli_fetch_assoc($listProduct)) {
            $idSP = $row["idSP"];
            $sql = "SELECT * FROM (danh_muc_san_pham INNER JOIN danh_muc ON danh_muc_san_pham.idDanhMuc = danh_muc.idDanhMuc)
                    INNER JOIN san_pham ON danh_muc_san_pham.idSP = san_pham.idSP
                    WHERE danh_muc_san_pham.idSP = $idSP";
            $result = mysqli_query($conn, $sql);
            $rowDMSP = mysqli_fetch_assoc($result);
        ?>
            <tr>
                <td><?php echo ++$id ?></td>
                <td><?php echo $row["tenSP"] ?></td>
                <td><?php echo $row["maSP"] ?></td>
                <td><?php echo addDotPrice($row["giaSP"]) ?>đ</td>
                <td style="text-transform:capitalize;"><?php echo $row["mauSP"] ?></td>
                <td><img src="../images/colors/<?php echo $row["anhMauSP"] ?>"></td>
                <td><img src="../images/<?php echo $row["anhSP1"] ?>" width="100px"></td>
                <td><img src="../images/<?php echo $row["anhSP2"] ?>" width="100px"></td>
                <td><?php if (!empty($row["anhSP3"])) { ?><img src="../images/<?php echo $row["anhSP3"] ?>" width="100px"><?php } ?></td>
                <td><?php if (!empty($row["anhSP4"])) { ?><img src="../images/<?php echo $row["anhSP4"] ?>" width="100px"><?php } ?></td>
                <td><?php echo $row["dongSP"] ?></td>
                <td><?php echo $row["kieuDang"] ?></td>
                <td><?php echo $row["doDai"] ?></td>
                <td><?php echo $row["hoaTiet"] ?></td>
                <td><?php echo $row["chatLieu"] ?></td>
                <td><?php echo $rowDMSP["tenDanhMuc"] ?></td>
                <td><?php echo $rowDMSP["loaiSanPham"] ?></td>
                <td><a href="index.php?page_layout=suaSP&idSanPham=<?php echo $row["idSP"] ?>"><i class="fas fa-pen editors" style="color:rgb(22, 157, 188);"></i></a></td>
                <td><a href="delProduct.php?idSanPham=<?php echo $row["idSP"] ?>"><i class="fas fa-trash-alt editors" style="color:#ac2f33;"></i></a></td>
            </tr>
        <?php
        }
        ?>
        </table>
    </div>
    <?php include 'pagination.php' ?>
</div>