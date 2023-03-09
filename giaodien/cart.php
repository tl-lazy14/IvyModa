<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devide-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/style.css">
    <title>Your Cart</title>
</head>

<body>
<?php
    include_once 'giaodien/header.php';
?>

<section class="cart">
    <div class="container">
        <div class="cart-content-header">
            <p style="font-size:23px;line-height:24px;font-weight:600;">Giỏ hàng của bạn <span style="color:#d73831;">
        <?php
        $tongSoSP = 0; 
        $tongTien = 0;
        if(isset($_SESSION['giohang'])){
            $sl = 0;
            foreach($_SESSION['giohang'] as $idsp => $sizesl) {
                foreach($_SESSION['giohang'][$idsp] as $size => $quantity) {
                    $sl++;
                }
            }
            $tongSoSP = $sl;
            echo $sl;
        } else {
            echo 0;
        }
        ?> sản phẩm</span></p>
        </div>

        <div class="cart-content row">
            <div class="cart-content-left">
            <?php 
            if (isset($_SESSION['giohang'])) {
            ?>
                <table>
                    <tr>
                        <th style="width:180px;">SẢN PHẨM</th>
                        <th style="width:280px;">TÊN SẢN PHẨM</th>
                        <th>MÀU</th>
                        <th style="width:80px;padding-left:30px;">SIZE</th>
                        <th>SỐ LƯỢNG</th>
                        <th>THÀNH TIỀN</th>
                        <th style="width:60px;"></th>
                    </tr>
            <?php
                foreach($_SESSION['giohang'] as $idsp => $sizesl) {
                    foreach($_SESSION['giohang'][$idsp] as $size => $quantity) {
                        $sql = "SELECT * FROM san_pham WHERE idSP = $idsp";
                        $result = mysqli_query($conn, $sql);
                        $row = mysqli_fetch_assoc($result);
                        $tongTien += $quantity * $row["giaSP"];
            ?>
                    <tr>
                        <td><img src="images/<?php echo $row["anhSP1"]?>" alt="productImage"></td>
                        <td><p style="text-transform:capitalize;text-align:center;"><?php echo $row["tenSP"]?></p></td>
                        <td><img src="images/colors/<?php echo $row["anhMauSP"]?>" alt="productColor"></td>
                        <td><p style="text-transform:uppercase;"><?php echo $size?></p></td>
                        <td><p><?php echo $quantity?></p></td>
                        <td><p><strong><?php echo addDotPrice($quantity * $row["giaSP"])?>đ</strong></p></td>
                        <td><a href="chucnang/removeFromCart.php?idSP=<?php echo $idsp?>&size=<?php echo $size?>"><i class="fas fa-trash" style="color:#ac2f33;font-size:26px;"></i></a></td>
                    </tr>
            <?php
                    }
                }
            ?>
                </table>
            <?php
            }
            ?>
            </div>

            <div class="cart-content-right">
                <div class="total-money-content">
                    <p style="font-size:23px;font-weight:550;color:#221F20;margin-bottom:18px;">Tổng tiền giỏ hàng</p>
                    <table>
                        <tr>
                            <td>Tổng sản phẩm</td>
                            <td style="width: 74%;"><?php echo $tongSoSP?></td>
                        </tr>
                        <tr>
                            <td>Tổng tiền hàng</td>
                            <td><?php echo addDotPrice($tongTien)?>đ</td>
                        </tr>
                        <tr>
                            <td>Thành tiền</td>
                            <td style="color: black;font-size:18px"><strong><?php echo addDotPrice($tongTien)?>đ</strong></td>
                        </tr>
                    </table>
                    <p style="color: #AC2F33;padding-right:30px;padding-bottom:18px;"><i style="padding-right:10px;" class="fas fa-exclamation-circle"></i>Miễn <b>đổi trả</b> đối với sản phẩm đồng giá / sale trên 50%</p>
                    <p style="color: #28A745;padding-right:30px;"><i style="padding-right:10px;" class="fas fa-check-circle"></i>Đơn hàng của bạn được Miễn phí ship</p>
                </div>
                <p id="noProduct" class="noProduct">Giỏ hàng của bạn không có sản phẩm nào</p>
                <div class="cart-content-right-button">
                    <button onclick="showCartNoItems()">MUA HÀNG</button>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
    include_once 'giaodien/footer.php';
?>

</body>
<script>
    function showCartNoItems() {
        <?php if ($tongSoSP == 0) { ?>
        document.getElementById("noProduct").style.display = "block";
        <?php
        } else {
            $_SESSION["tongTien"] = $tongTien;
        ?>
        window.location.assign("index.php?page_layout=delivery");
        <?php } ?>
    }
</script>
</html>