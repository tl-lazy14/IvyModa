<div class="category-right-top row">
    <div class="category-right-top-item">
        <p style="text-transform:uppercase;font-size:19px;"><?php echo $row["loaiSanPham"]?></p>
    </div>
    <div class="category-right-top-item">
        <?php
        $orderCondition = "";
        $orderSort = isset($_GET["sort"]) ? $_GET["sort"] : "";
        if (!empty($orderSort)) {
            $orderCondition = " ORDER BY giaSP " . $orderSort;
        }
        ?>
        <select id="sort" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
            <option class="option-sort" value="">Sắp xếp theo giá</option>
            <option class="option-sort" <?php if (isset($_GET["sort"]) && $_GET["sort"] == "desc") {?> selected <?php } ?> value="?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $_GET["idDanhMuc"]?>&sort=desc">Cao đến thấp</option>
            <option class="option-sort" <?php if (isset($_GET["sort"]) && $_GET["sort"] == "asc") {?> selected <?php } ?> value="?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $_GET["idDanhMuc"]?>&sort=asc">Thấp đến cao</option>
        </select>
    </div>
</div>

<div class="category-right-content row">
<?php
    $currentPage = !empty($_GET["page"]) ? (int)$_GET["page"] : 1;
    $offset = 4 * ($currentPage - 1);
    $sqlListSP = "SELECT * FROM danh_muc_san_pham INNER JOIN san_pham ON danh_muc_san_pham.idSP = san_pham.idSP
                WHERE danh_muc_san_pham.idDanhMuc = $idDM" . $orderCondition . " LIMIT 4 OFFSET $offset";
    $sqlTotalSP = "SELECT * FROM danh_muc_san_pham INNER JOIN san_pham ON danh_muc_san_pham.idSP = san_pham.idSP
                WHERE danh_muc_san_pham.idDanhMuc = $idDM";
    $totalSP = mysqli_query($conn, $sqlTotalSP);
    $listSP = mysqli_query($conn, $sqlListSP);
    if (mysqli_num_rows($listSP) > 0) {
        while ($rowSP = mysqli_fetch_assoc($listSP)) {
?>
    <div class="category-right-content-item">
        <a href="index.php?page_layout=product&idSanPham=<?php echo $rowSP["idSP"]?>"><img src="images/<?php echo $rowSP["anhSP1"]?>" alt="<?php echo $rowSP["tenSP"]?>"></a>
        <a href="index.php?page_layout=product&idSanPham=<?php echo $rowSP["idSP"]?>"><p class="tenSP"><?php echo $rowSP["tenSP"]?></h1></p></a>
        <p class="giaSP"><?php echo addDotPrice($rowSP["giaSP"])?>đ</p>
    </div>
<?php
        }
    }
?>
</div>