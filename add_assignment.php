<?php
require_once 'includes/config.php';
include 'includes/functions.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['class_id']) && isset($_POST['title']) && isset($_POST['description'])) {
    $class_id = $_POST['class_id'];
    $title = $_POST['title'];
    $description = $_POST['description'];

    // Panggil fungsi untuk menambahkan tugas ke database
    addAssignment($class_id, $title, $description);

    // Redirect kembali ke halaman detail kelas
    header("Location: class_detail.php?id=$class_id");
    exit();
} else {
    // Jika data tidak lengkap, redirect ke halaman classes.php
    header("Location: classes.php");
    exit();
}
?>
