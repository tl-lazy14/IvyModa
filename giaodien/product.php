<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devide-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/style.css">
    <title>Product</title>
</head>

<body>
<?php
    include_once 'giaodien/header.php';
?>

<section class="product">
    <div class="container">
        <div class="product-top row">
        <?php
            $idSP = $_GET["idSanPham"];
            $sql = "SELECT * FROM (danh_muc_san_pham INNER JOIN danh_muc ON danh_muc_san_pham.idDanhMuc = danh_muc.idDanhMuc)
                    INNER JOIN san_pham ON danh_muc_san_pham.idSP = san_pham.idSP
                    WHERE danh_muc_san_pham.idSP = $idSP";
            $result = mysqli_query($conn, $sql);
            $row = mysqli_fetch_assoc($result);
        ?>
            <p><?php echo $row["tenDanhMuc"]?></p> <span>&#10230; </span> <a href="index.php?page_layout=category&chucnang=showDM&idDanhMuc=<?php echo $row["idDanhMuc"]?>"><p><?php echo $row["loaiSanPham"]?></p></a> <span>&#10230;</span> <p><?php echo $row["tenSP"]?></p>
        </div>
        <div class="product-content row">
            <div class="product-content-left row">
                <div class="big-img">
                    <img src="images/<?php echo $row["anhSP1"]?>" alt="bigImage">
                </div>
                <div class="small-img">
                    <img src="images/<?php echo $row["anhSP1"]?>">
                    <img src="images/<?php echo $row["anhSP2"]?>">
                    <img src="images/<?php echo $row["anhSP3"]?>">
                <?php
                if ($row["anhSP4"] != null) {
                ?>
                    <img src="images/<?php echo $row["anhSP4"]?>">
                <?php } ?>
                </div>
            </div>
            <div class="product-content-right">
                <div class="product-name">
                    <h1 style="text-transform:uppercase;font-family:'Times New Roman', Times, serif;font-size:36px;line-height:1.2;"><?php echo $row["tenSP"]?></h1>
                    <p>SKU: <?php echo $row["maSP"]?></p>
                </div>
                <div class="product-price">
                    <p style="font-weight:bold;"><?php echo addDotPrice($row["giaSP"])?>đ</p>
                </div>
                <div class="product-color">
                    <p style="font-weight:bold;">Màu sắc: <?php echo $row["mauSP"]?></p>
                    <div class="product-color-img">
                        <img src="images/colors/<?php echo $row["anhMauSP"]?>" alt="colorImage">
                    </div>
                </div>
                <div class="product-size">
                    <p style="font-weight:bold;">Size:</p>
                    <form id="product-form" method="post">
                    <div class="product-size-input">
                        <label>
                            <input type="radio" name="size" value="S" checked>
                            <span>S</span>
                        </label>
                        <label>
                            <input type="radio" name="size" value="M">
                            <span>M</span>
                        </label>
                        <label>
                            <input type="radio" name="size" value="L">
                            <span>L</span>
                        </label>
                        <label>
                            <input type="radio" name="size" value="XL">
                            <span>XL</span>
                        </label>
                        <label>
                            <input type="radio" name="size" value="XXL">
                            <span>XXL</span>
                        </label>
                    </div>
                    </form>
                </div>
                <div class="quantity">
                    <p><b>Số lượng:</b></p>
                    <input type="number" name="quantity" form="product-form" min="1" oninput="(validity.valid)||(value=1);" value="1">
                </div>
                <div class="product-button">
                    <input type="submit" form="product-form" formaction="chucnang/addToCart.php?idSP=<?php echo $_GET['idSanPham']?>" class="addCart"  name="addCart" value="THÊM VÀO GIỎ">
                    <input type="submit" form="product-form" formaction="chucnang/buyProduct.php?idSP=<?php echo $_GET['idSanPham']?>" class="buyProduct"  name="buyProduct" value="MUA HÀNG">
                </div>
            <?php
            if (isset($_SESSION["added"]) && $_SESSION["added"] == true) {
            ?>
                <div class="notify-added" id="notify-added"><p>Thêm vào giỏ hàng thành công!</p></div>
            <?php
            }
            $_SESSION["added"] = false;
            ?>
                <div class="product-icon">
                    <div class="product-icon-item">
                        <i class="fas fa-phone-alt"></i> <p>Hotline</p>
                    </div>
                    <div class="product-icon-item">
                        <i class="fas fa-comments"></i> <p>Chat</p>
                    </div>
                    <div class="product-icon-item">
                        <i class="fas fa-envelope"></i> <p>Mail</p>
                    </div>
                </div>
                <div class="product-detail-tab">
                    <div class="product-detail-tab-content">
                        <div class="product-detail-tab-content-header row">
                            <div class="tab-item" id="introduce">
                                <p class="tab-item-selected">GIỚI THIỆU</p>
                            </div>
                            <div class="tab-item" id="detail">
                                <p>CHI TIẾT SẢN PHẨM</p>
                            </div>
                            <div class="tab-item" id="preserve">
                                <p>BẢO QUẢN</p>
                            </div>
                        </div>
                        <div class="product-detail-tab-content-body">
                            <div class="introduce-content">
                            <?php echo $row["gioithieuSP"]?>
                            </div>
                            <div class="detail-content">
                                <table>
                                    <tr>
                                        <th>Dòng sản phẩm</th>
                                        <td><?php echo $row["dongSP"]?></td>
                                    </tr>
                                    <tr>
                                        <th>Kiểu dáng</th>
                                        <td><?php echo $row["kieuDang"]?></td>
                                    </tr>
                                    <tr>
                                        <th>Độ dài</th>
                                        <td><?php echo $row["doDai"]?></td>
                                    </tr>
                                    <tr>
                                        <th>Họa tiết</th>
                                        <td><?php echo $row["hoaTiet"]?></td>
                                    </tr>
                                    <tr>
                                        <th>Chất liệu</th>
                                        <td><?php echo $row["chatLieu"]?></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="preserve-content">
                                Chi tiết bảo quản sản phẩm :<br>
<strong>* Các sản phẩm thuộc dòng cao cấp (Senora) và áo khoác (dạ, tweed, lông, phao) chỉ giặt khô, tuyệt đối không giặt ướt.</strong><br><br>
* Vải dệt kim: sau khi giặt sản phẩm phải được phơi ngang tránh bai dãn.<br><br>
* Vải voan, lụa, chiffon nên giặt bằng tay.<br><br>
* Vải thô, tuytsy, kaki không có phối hay trang trí đá cườm thì có thể giặt máy.<br><br>
* Vải thô, tuytsy, kaki có phối màu tường phản hay trang trí voan , lụa , đá cườm thì cần giặt tay.<br><br>
* Đồ Jeans nên hạn chế giặt bằng máy giặt vì sẽ làm phai màu jeans. Nếu giặt thì nên lộn trái sản phẩm khi giặt , đóng khuy , kéo khóa, không nên giặt chung cùng đồ sáng màu , tránh dính màu vào các sản phẩm khác.<br><br>
* Các sản phẩm cần được giặt ngay không ngâm tránh bị loang màu , phân biệt màu và loại vải để tránh trường hợp vải phai. Không nên giặt sản phẩm với xà phòng có chất tẩy mạnh , nên giặt cùng xà phòng pha loãng.<br><br>
* Các sản phẩm có thể giặt bằng máy thì chỉ nên để chế độ giặt nhẹ, vắt mức trung bình và nên phân các loại sản phẩm cùng màu và cùng loại vải khi giặt.<br><br>
* Nên phơi sản phẩm tại chỗ thoáng mát, tránh ánh nắng trực tiếp sẽ dễ bị phai bạc màu , nên làm khô quần áo bằng cách phơi ở những điểm gió sẽ giữ màu vải tốt hơn.<br><br>
* Những chất vải 100% cotton, không nên phơi sản phẩm bằng mắc áo mà nên vắt ngang sản phẩm lên dây phơi để tránh tình trạng rạn vải.<br><br>
* Khi ủi sản phẩm bằng bàn là và sử dụng chế độ hơi nước sẽ làm cho sản phẩm dễ ủi phẳng, mát và không bị cháy, giữ màu sản phẩm được đẹp và bền lâu hơn. Nhiệt độ của bàn là tùy theo từng loại vải.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
    include_once 'giaodien/footer.php';
?>

</body>
<script src="js/script.js"></script>
</html>