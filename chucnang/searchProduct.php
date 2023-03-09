<div class="category-right-top row">
    <div class="category-right-top-item">
        <p style="text-transform:uppercase;font-size:19px;">Kết quả tìm kiếm theo '<?php echo $_SESSION["keySearch"]?>'</p>
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
            <option value="">Sắp xếp theo giá</option>
            <option <?php if (isset($_GET["sort"]) && $_GET["sort"] == "desc") {?> selected <?php } ?> value="?page_layout=category&chucnang=timkiem&sort=desc">Cao đến thấp</option>
            <option <?php if (isset($_GET["sort"]) && $_GET["sort"] == "asc") {?> selected <?php } ?> value="?page_layout=category&chucnang=timkiem&sort=asc">Thấp đến cao</option>
        </select>
    </div>
</div>

<div class="category-right-content row">
<?php
    $currentPage = !empty($_GET["page"]) ? (int)$_GET["page"] : 1;
    $offset = 4 * ($currentPage - 1);
    $keySearch = $_SESSION["keySearch"];
    if (str_word_count($keySearch) == 1) {
        $sqlListSP = "SELECT * FROM san_pham WHERE tenSP LIKE '%$keySearch%'" . $orderCondition . " LIMIT 4 OFFSET $offset";
        $sqlTotalSP = "SELECT * FROM san_pham WHERE tenSP LIKE '%$keySearch%'";
    }
    else if (str_word_count($keySearch) > 1) {
        $words = explode(' ', $keySearch);
        $sqlListSP = "SELECT * FROM san_pham WHERE tenSP LIKE '%$words[0]%'";
        $sqlTotalSP = "SELECT * FROM san_pham WHERE tenSP LIKE '%$words[0]%'";
        for ($i = 1; $i < count($words); $i++) {
            $sqlListSP .= " AND tenSP LIKE '%$words[$i]%'";
            $sqlTotalSP .= " AND tenSP LIKE '%$words[$i]%'";
        }
        $sqlListSP .= $orderCondition;
        $sqlListSP .= " LIMIT 4 OFFSET $offset";
    }
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
    else if (mysqli_num_rows($listSP) == 0) {
?>
        <p style="font-size:19px;color:#6c6d70;margin-left:12px;">Không tìm thấy sản phẩm phù hợp!</p>
<?php
    }
?>
</div>