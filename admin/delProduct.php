<?php
	session_start();
	include_once("../config/connectDB.php");
	if(isset($_SESSION["account"])){
		$idSP = $_GET["idSanPham"];
		$sql1 = "DELETE FROM danh_muc_san_pham WHERE idSP = $idSP";
		$query1 = mysqli_query($conn, $sql1);
        $sql2 = "DELETE FROM san_pham WHERE idSP = $idSP";
		$query2 = mysqli_query($conn, $sql2);
		header('location:index.php?page_layout=danhsachSP');
	}else{
		header('location:login.php');
	}
?>