<?php
$pageLayout = $_GET["page_layout"];
if ($pageLayout == "danhsachDM") {
    $objPerPages = 20;
    $total = $totalCategory;
} else if ($pageLayout == "danhsachSP") {
    $objPerPages = 10;
    $total = $totalProduct;
} else if ($pageLayout == "don_hang") {
    $objPerPages = 10;
    $total = $totalOrder;
}

if (mysqli_num_rows($total) > 0) {
    $totalRecords = mysqli_num_rows($total);
    $totalPages = ceil($totalRecords / $objPerPages);
?>
<div style="text-align:center;">
    <div class="list-page" style="display:inline-block;">
        <ul>

        <?php   // Trang đầu
        if ($currentPage > 3) {
            $firstPage = 1;
        ?>
            <li><a href="index.php?page_layout=<?php echo $pageLayout ?>&page=<?php echo $firstPage?>">Trang đầu</a></li>
        <?php
            }
        ?>

        <?php  // Quay về trang trước
        if ($currentPage > 1) {
            $prevPage = $currentPage - 1;
        ?>
            <li><a href="index.php?page_layout=<?php echo $pageLayout ?>&page=<?php echo $prevPage?>">&#171;</a></li>
        <?php
            }
        ?>

        <?php // Các trang đánh số
        for ($num = 1; $num <= $totalPages; $num++) {
            if ($num != $currentPage) {
                if ($num > $currentPage - 3 && $num < $currentPage + 3) {
        ?>
            <li><a href="index.php?page_layout=<?php echo $pageLayout ?>&page=<?php echo $num?>"><?php echo $num?></a></li>
        <?php
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
        ?>
            <li><a href="index.php?page_layout=<?php echo $pageLayout ?>&page=<?php echo $nextPage?>">&#187;</a></li>
        <?php
        }
        ?>

        <?php  // Trang cuối
        if ($currentPage <= $totalPages - 3) {
            $endPage = $totalPages;
        ?>
            <li><a href="index.php?page_layout=<?php echo $pageLayout ?>&page=<?php echo $endPage?>">Trang cuối</a></li>
        <?php
        }
        ?>

        </ul>
    </div>
</div>
<?php } ?>