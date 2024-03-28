<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-XXH+hdVl2ZwFWid1/wj3WUwNsckM5QJfHeu5e0KbZyagIU3aRypgTDpGJw5n9vUV7e8rPlY6b7heKoF7vWzPIw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="style.css">
    <style>
        .sidebar {
            height: 100vh; /* Tinggi 100% dari viewport */
        }
    </style>
</head>
<body>
<div class="col-md-3 col-lg-2 bg-primary sidebar">
  <div class="sidebar-sticky">
    <div class="sidebar-header bg-primary text-white py-3">
      <h3 class="m-3">Classroom</h3>
    </div>
    <ul class="nav flex-column">
      <li class="nav-item">
        <a class="nav-link text-white" href="index.php">
          <i class="fa fa-home mr-2"></i>Beranda
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#">
          <i class="fa fa-calendar-alt mr-2"></i>Kalender
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#">
          <i class="fa fa-users mr-2"></i>Terdaftar
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#">
          <i class="fa fa-clipboard-list mr-2"></i>Daftar tugas
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="classes.php">
          <i class="fa fa-chalkboard-teacher mr-2"></i>Daftar Kelas
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#">
          <i class="fa fa-archive mr-2"></i>Kelas yang diarsipkan
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-white" href="#">
          <i class="fa fa-cog mr-2"></i>Setelan
        </a>
      </li>
    </ul>
  </div>
</div>
<script src="assets/js/script.js"></script>
</body>
</html>
