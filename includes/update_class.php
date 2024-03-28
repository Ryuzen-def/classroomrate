<?php
require_once 'config.php';
require_once 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $teacher = $_POST['teacher'];

    // Panggil fungsi updateClass() untuk memperbarui data kelas
    updateClass($id, $name, $teacher);

    // Redirect kembali ke halaman edit_class.php dengan pesan sukses
    header("Location: ../edit_class.php?id=$id&success=1");
    exit();
} else {
    // Jika tidak ada metode POST, redirect kembali ke halaman edit_class.php dengan pesan error
    header("Location: ../edit_class.php?error=1");
    exit();
}
?>
