<?php
require_once 'includes/config.php';
include 'includes/functions.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['class_id']) && isset($_POST['rating'])) {
    $class_id = $_POST['class_id'];
    $rating = $_POST['rating'];

    // Panggil fungsi untuk memberi rating pada kelas
    rateClass($class_id, $rating);

    // Redirect kembali ke halaman detail kelas
    header("Location: class_detail.php?id=$class_id");
    exit();
} else {
    // Jika data tidak lengkap, redirect ke halaman classes.php
    header("Location: classes.php");
    exit();
}
?>
