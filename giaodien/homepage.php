<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=devide-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/1147679ae7.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="CSS/style.css">
    <title>Homepage</title>
</head>

<body>
<?php
    include_once 'giaodien/header.php';
?>

<section class="slider">
<div class="aspect-ratio-169">
    <img src="images/slider1.jpg" alt="Slider1">
    <img src="images/slider2.jpg" alt="Slider2">
    <img src="images/slider3.jpg" alt="Slider3">
    <img src="images/slider4.jpg" alt="Slider4">
    <img src="images/slider5.jpg" alt="Slider5">
    <img src="images/slider6.jpg" alt="Slider6">
</div>

<div class="dot-container">
    <div class="dot active"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
</div>
</section>

<?php
    include_once 'giaodien/footer.php';
?>
</body>

<script src="js/slider.js"></script>
</html>