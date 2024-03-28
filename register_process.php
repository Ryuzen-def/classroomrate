<?php
require_once 'includes/functions.php';

// Periksa apakah metode yang digunakan adalah POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Ambil data dari formulir registrasi
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Registrasi pengguna
    if (registerUser($username, $email, $password)) {
        // Registrasi berhasil, arahkan pengguna ke halaman login
        header('Location: login.php');
        exit();
    } else {
        // Registrasi gagal, arahkan kembali pengguna ke halaman registrasi dengan pesan kesalahan
        header('Location: register.php?error=registration_failed');
        exit();
    }
} else {
    // Jika bukan metode POST, arahkan kembali pengguna ke halaman registrasi
    header('Location: register.php');
    exit();
}
?>
