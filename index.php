<?php
session_start();
include_once('config/connectDB.php');
?>

<?php
function addDotPrice($price) {
    $str = (string)$price;
    $str = strrev($str);
    $res = "";
    for ($x = 0; $x < strlen($str); $x++) {
        $res .= $str[$x];
        if ($x % 3 == 2 && $x < strlen($str) - 1) $res .= ".";
    }
    return strrev($res);
}
function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
  }
?>

<?php
if (isset($_GET['page_layout'])) {
    switch ($_GET['page_layout']) {
        case 'homepage': include_once('giaodien/homepage.php'); break;
        case 'category': include_once('giaodien/category.php'); break;
        case 'product': include_once('giaodien/product.php'); break;
        case 'cart': include_once('giaodien/cart.php'); break;
        case 'delivery': include_once('giaodien/delivery.php'); break;
        case 'finish': include_once('giaodien/finish.php'); break;
        case 'invoice': include_once('giaodien/invoice.php'); break;
    }
}
else { include_once('giaodien/homepage.php'); }
?>
