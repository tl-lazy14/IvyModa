<?php
	session_start();
	$idSP = $_GET['idSP'];
    $size = $_GET['size'];
	unset($_SESSION['giohang'][$idSP][$size]);
	//Nếu không còn sản phẩm trong giỏ hàng -> Xỏa giỏ hàng
	$sl = 0;
	foreach($_SESSION['giohang'] as $idsp => $sizesl) {
		foreach($_SESSION['giohang'][$idsp] as $size => $quantity) {
			$sl++;
		}
	}
	if($sl == 0){
		unset($_SESSION['giohang']);
	}
	header('location:../index.php?page_layout=cart');
?>