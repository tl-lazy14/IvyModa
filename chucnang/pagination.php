<?php
if (mysqli_num_rows($totalSP) > 0) {
    $totalRecords = mysqli_num_rows($totalSP);
    $totalPages = ceil($totalRecords / 4);
?>
<div style="text-align:center;">
    <div class="list-page" style="display:inline-block;">
        <ul>

        <?php   // Trang đầu
        if ($currentPage > 3) {
            $firstPage = 1;
            if ($_GET["chucnang"] == "timkiem") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=timkiem&page=<?php echo $firstPage?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>">Trang đầu</a></li>
        <?php
            } else if ($_GET["chucnang"] == "showDM") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $_GET["idDanhMuc"]?>&page=<?php echo $firstPage?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>">Trang đầu</a></li>
        <?php
            }
        }
        ?>

        <?php  // Quay về trang trước
        if ($currentPage > 1) {
            $prevPage = $currentPage - 1;
            if ($_GET["chucnang"] == "timkiem") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=timkiem&page=<?php echo $prevPage?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>">&#171;</a></li>
        <?php
            } else if ($_GET["chucnang"] == "showDM") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $_GET["idDanhMuc"]?>&page=<?php echo $prevPage?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>">&#171;</a></li>
        <?php
            }
        }
        ?>

        <?php // Các trang đánh số
        for ($num = 1; $num <= $totalPages; $num++) {
            if ($num != $currentPage) {
                if ($num > $currentPage - 3 && $num < $currentPage + 3) {
                    if ($_GET["chucnang"] == "timkiem") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=timkiem&page=<?php echo $num?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>"><?php echo $num?></a></li>
        <?php
                    } else if ($_GET["chucnang"] == "showDM") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $_GET["idDanhMuc"]?>&page=<?php echo $num?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>"><?php echo $num?></a></li>
        <?php
                    }
                }
            }
            else {
        ?>
            <li><strong><?php echo $num?></strong></li>
        <?php
            }
        }
        ?>

        <?php  // Sang trang tiếp theo
        if ($currentPage < $totalPages) {
            $nextPage = $currentPage + 1;
            if ($_GET["chucnang"] == "timkiem") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=timkiem&page=<?php echo $nextPage?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>">&#187;</a></li>
        <?php
            } else if ($_GET["chucnang"] == "showDM") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $_GET["idDanhMuc"]?>&page=<?php echo $nextPage?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>">&#187;</a></li>
        <?php
            }
        }
        ?>

        <?php  // Trang cuối
        if ($currentPage <= $totalPages - 3) {
            $endPage = $totalPages;
            if ($_GET["chucnang"] == "timkiem") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=timkiem&page=<?php echo $endPage?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>">Trang cuối</a></li>
        <?php
            } else if ($_GET["chucnang"] == "showDM") {
        ?>
            <li><a href="index.php?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $_GET["idDanhMuc"]?>&page=<?php echo $endPage?><?php if (isset($_GET["sort"])) {?>&sort=<?php echo $_GET["sort"];}?>">Trang cuối</a></li>
        <?php
            }
        }
        ?>

        </ul>
    </div>
</div>
<?php } ?>