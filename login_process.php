<?php
require_once 'includes/functions.php';

// Periksa apakah metode yang digunakan adalah POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Ambil data dari formulir login
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Lakukan proses login
    $user = loginUser($username, $password);
    if ($user) {
        // Login berhasil, arahkan pengguna ke halaman utama atau halaman lain yang sesuai
        session_start();
        $_SESSION['user'] = $user;
        header('Location: index.php');
        exit();
    } else {
        // Login gagal, arahkan kembali pengguna ke halaman login dengan pesan kesalahan
        header('Location: login.php?error=login_failed');
        exit();
    }
} else {
    // Jika bukan metode POST, arahkan kembali pengguna ke halaman login
    header('Location: login.php');
    exit();
}
?>
