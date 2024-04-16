<?php
session_start();
include ("includes/config.php");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Mengambil data yang dikirimkan dari form login
  $username = $_POST["name"];
  $password = $_POST["password"];

  // Membuat query untuk mengambil data pengguna dari database
  $sql = "SELECT * FROM students WHERE name='$username' AND password='$password'";
  $result = $conn->query($sql);

  // Memeriksa apakah query berhasil dieksekusi dan apakah ada hasil yang ditemukan
  if ($result->num_rows > 0) {
      $_SESSION["username"] = $username;
      header("Location: index.php");
      exit();
  } else {
      $error_message = "Nama pengguna atau kata sandi salah.";
  }
  $conn->close();
}