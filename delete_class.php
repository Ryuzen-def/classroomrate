<?php
require_once 'includes/config.php';
include 'includes/functions.php';

$id = $_GET['id'];

// Tambahkan pesan debugging
echo "Mencoba menghapus kelas dengan ID: " . $id . "<br>";

// Hapus kelas dan periksa hasilnya
if (deleteClass($id)) {
    echo "Kelas berhasil dihapus.<br>";
    // Jika penghapusan berhasil, redirect ke halaman daftar kelas
    header('Location: classes.php');
    exit();
} else {
    // Jika terjadi kesalahan saat penghapusan, tampilkan pesan kesalahan
    echo "Gagal menghapus kelas. Silakan coba lagi.<br>";
    exit();
}
?>
