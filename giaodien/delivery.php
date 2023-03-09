<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devide-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/style.css">
    <title>Delivery</title>
</head>

<body>
<?php
    include_once 'giaodien/header.php';
?>

<section class="delivery">
    <div class="container">
        <div class="delivery-content row">
            <div class="delivery-content-left">
                <div class="address-method-delivery row">
                    <div class="address-delivery">
                        <h3>Địa chỉ giao hàng</h3>
                        <form action="index.php?page_layout=finish" method="post" id="form1" autocomplete="off">
                        <div class="input-address">
                            <input type="text" name="name" placeholder="Họ tên" style="width:221px;margin-right:12px" required autofocus>
                            <input type="tel" name="phone-number" placeholder="Số điện thoại" pattern="[0-9]{10}" style="width:221px;" required><br>
                            <input type="email" name="email" placeholder="Email" style="width:100%;" required><br>
                            <input type="text" name="province" placeholder="Tỉnh/Thành phố" style="width:221px;margin-right:12px" required>
                            <input type="text" name="district" placeholder="Quận/Huyện" style="width:221px;" required><br>
                            <input type="text" name="ward" placeholder="Phường xã" style="width:100%;" required><br>
                            <input type="text" name="address-detail" placeholder="Địa chỉ chi tiết" style="width:100%;" required>
                        </div>
                        </form>
                    </div>
                    <div class="method-delivery">
                        <h3>Phương thức giao hàng</h3>
                        <p><i style="padding-right:10px;" class="fas fa-check-circle"></i>Chuyển phát nhanh</p>
                    </div>
                </div>
                <div class="payment-method">
                    <h3>Phương thức thanh toán</h3>
                    <div class="payment-method-content">
                        <p style="font-size:15px;color:#6c6d70;line-height:16px;margin-bottom:20px;">Mọi giao dịch đều được bảo mật và mã hóa. Thông tin thẻ tín dụng sẽ không bao giờ được lưu lại.</p>
                        <div class="payment-method-options" style="position:relative;">
                            <input type="radio" name="payment_method" value="credit-card" checked>
                            <label>Thanh toán bằng thẻ tín dụng</label>
                            <img src="images/visalogo.png" alt="visalogo">
                        </div>
                        <div class="payment-method-options">
                            <input type="radio" name="payment_method" value="ATM-card">
                            <label>Thanh toán bằng thẻ ATM</label>
                            <p style="margin-left:24px;margin-top:5px;font-size:15px;color:#6c6d70;">Hỗ trợ thanh toán online hơn 38 ngân hàng phổ biến Việt Nam.</p>
                        </div>
                        <div class="payment-method-options">
                            <input type="radio" name="payment_method" value="momo">
                            <label>Thanh toán bằng Momo</label>
                        </div>
                    </div>
                </div>
                <div class="show-product-button">
                    <button onclick="showProductContent()">Hiển thị giỏ hàng</button>
                </div>
                <div class="show-product-content" id="yourcart">
                    <h2>Giỏ hàng của bạn</h2>
                    <?php if (isset($_SESSION['giohang'])) { ?>
                    <div class="show-product">
                        <table>
                            <tr>
                                <th style="width:180px;">SẢN PHẨM</th>
                                <th style="width:280px;">TÊN SẢN PHẨM</th>
                                <th>MÀU</th>
                                <th style="width:80px;padding-left:30px;">SIZE</th>
                                <th>SỐ LƯỢNG</th>
                                <th>THÀNH TIỀN</th>
                            </tr>
                    <?php
                        foreach($_SESSION['giohang'] as $idsp => $sizesl) {
                            foreach($_SESSION['giohang'][$idsp] as $size => $quantity) {
                                $sql = "SELECT * FROM san_pham WHERE idSP = $idsp";
                                $result = mysqli_query($conn, $sql);
                                $row = mysqli_fetch_assoc($result);
                    ?>
                            <tr>
                                <td><img src="images/<?php echo $row["anhSP1"]?>" alt="productImage"></td>
                                <td><p style="text-transform:capitalize;text-align:center;"><?php echo $row["tenSP"]?></p></td>
                                <td><img src="images/colors/<?php echo $row["anhMauSP"]?>" alt="productColor"></td>
                                <td><p><?php echo $size?></p></td>
                                <td><p><?php echo $quantity?></p></td>
                                <td><p><strong><?php echo addDotPrice($quantity * $row["giaSP"])?>đ</strong></p></td>
                            </tr>
                    <?php
                            }
                        }    
                    ?>
                        </table>
                    </div>
                    <?php } ?>
                </div>
            </div>
            <div class="delivery-content-right">
                <div class="order-summary">
                    <p style="font-size:23px;font-weight:550;color:#221F20;margin-bottom:18px;">Tóm tắt đơn hàng</p>
                    <table>
                        <tr>
                            <td>Tổng tiền hàng</td>
                            <td><?php echo addDotPrice($_SESSION["tongTien"])?>đ</td>
                        </tr>
                        <tr>
                            <td>Tạm tính</td>
                            <td><?php echo addDotPrice($_SESSION["tongTien"])?>đ</td>
                        </tr>
                        <tr>
                            <td>Phí vận chuyển</td>
                            <td>0đ</td>
                        </tr>
                        <tr>
                            <td>Tiền thanh toán</td>
                            <td style="color: black;font-size:18px"><strong><?php echo addDotPrice($_SESSION["tongTien"])?>đ</strong></td>
                        </tr>
                    </table>
                </div>
                <div class="delivery-content-right-button">
                    <input type="submit" name="submit" form="form1" value="THANH TOÁN & MUA HÀNG" <?php if ($_SESSION["tongTien"] == 0) { ?> disabled <?php } ?>>
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