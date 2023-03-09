<div class="showListCategory">
    <h1>Danh sách danh mục</h1>
    <div class="list-category">
        <table>
            <tr>
                <th>Thứ tự</th>
                <th>Tên danh mục</th>
                <th>Nhóm sản phẩm</th>
                <th>Loại sản phẩm</th>
                <th colspan="2">Quản lý</th>
            </tr>
        <?php
        $currentPage = isset($_GET["page"]) ? (int)$_GET["page"] : 1;
        $offset = 20 * ($currentPage - 1);
        $sqlListCategory = "SELECT * FROM danh_muc ORDER BY tenDanhMuc ASC, nhomSanPham ASC, loaiSanPham ASC LIMIT 20 OFFSET $offset";
        $sqlTotalCategory = "SELECT * FROM danh_muc";
        $listCategory = mysqli_query($conn, $sqlListCategory);
        $totalCategory = mysqli_query($conn, $sqlTotalCategory);
        $id = $offset;
        while ($row = mysqli_fetch_assoc($listCategory)) {
        ?>
            <tr>
                <td><?php echo ++$id ?></td>
                <td><?php echo $row["tenDanhMuc"] ?></td>
                <td><?php echo $row["nhomSanPham"] ?></td>
                <td><?php echo $row["loaiSanPham"] ?></td>
                <td><a href="index.php?page_layout=suaDM&idDanhMuc=<?php echo $row["idDanhMuc"] ?>"><i class="fas fa-pen editors" style="color:rgb(22, 157, 188);"></i></a></td>
                <td><a href="delCategory.php?idDanhMuc=<?php echo $row["idDanhMuc"] ?>"><i class="fas fa-trash-alt editors" style="color:#ac2f33;"></i></a></td>
            </tr>
        <?php
        }
        ?>
        </table>
    </div>
    <?php include 'pagination.php' ?>
</div>