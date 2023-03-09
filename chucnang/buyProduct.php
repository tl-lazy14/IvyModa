<?php
    session_start();
	$idSP = $_GET['idSP'];
	//Nếu đã tồn tại sản phẩm trong giỏ hàng thì tăng sl lên. Ngược lại, số lượng được gán = SL khách chọn
	if(isset($_SESSION['giohang'][$idSP][$_POST['size']])) {
		$_SESSION['giohang'][$idSP][$_POST['size']] += $_POST['quantity'];
	} else {
		$_SESSION['giohang'][$idSP][$_POST['size']] = $_POST['quantity'];
	}
    header('location:../index.php?page_layout=cart');
?>