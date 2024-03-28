<?php
require_once 'config.php';
require_once 'database.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $teacher = $_POST['teacher'];

    // Panggil fungsi addClass() untuk menambahkan kelas baru
    addClass($name, $teacher);

    // Redirect kembali ke halaman classes.php dengan pesan sukses
    header("Location: ../classes.php?success=1");
    exit();
} else {
    // Jika tidak ada metode POST, redirect kembali ke halaman classes.php dengan pesan error
    header("Location: ../classes.php?error=1");
    exit();
}
?>
