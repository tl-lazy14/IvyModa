<?php
	session_start();
	include_once("../config/connectDB.php");
	if(isset($_SESSION["account"])){
		$idDM = $_GET["idDanhMuc"];
		$sql1 = "DELETE FROM danh_muc_san_pham WHERE idDanhMuc = $idDM";
		$query1 = mysqli_query($conn, $sql1);
        $sql2 = "DELETE FROM danh_muc WHERE idDanhMuc = $idDM";
		$query2 = mysqli_query($conn, $sql2);
		header('location:index.php?page_layout=danhsachDM');
	}else{
		header('location:login.php');
	}
?>