<?php
require_once 'includes/config.php';
include 'includes/functions.php';

// Validasi ID kelas
$class_id = validateClassId();

// Ambil informasi kelas dari database
$class = getClassByIdWithValidation($class_id);

// Ambil daftar tugas untuk kelas ini dari database
$assignments = getAssignmentsByClassId($class_id);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?php echo $class['name']; ?> - Detail Kelas</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Custom CSS -->  <style>
    /* Custom styling for the class detail container */
    .class-detail-container {
      background-color: #f8f9fa;
      border-radius: 10px;
      padding: 20px;
      margin-top: 20px;
      border: 2px #343434 solid;
    }
  </style>
</head>
<body>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-9 col-lg-10 main-content">
        <div class="class-detail-container">
          <h2><?php echo $class['name']; ?> - Detail Kelas</h2>
          <br>
          <h3>Daftar Tugas</h3>
          <ul>
            <?php foreach ($assignments as $assignment): ?>
              <li><?php echo $assignment['title']; ?></li>
            <?php endforeach; ?>
          </ul>

          <!-- Form untuk menambahkan tugas -->
          <h3>Tambah Tugas Baru</h3>
          <form action="add_assignment.php" method="post">
            <input type="hidden" name="class_id" value="<?php echo $class_id; ?>">
            <label for="title">Judul Tugas:</label><br>
            <input type="text" id="title" name="title" required><br><br>
            <label for="description">Deskripsi Tugas:</label><br>
            <textarea id="description" name="description" required></textarea><br><br>
            <button type="submit" class="btn btn-primary">Tambah Tugas</button>
          </form>

          <!-- Form untuk memberikan rating -->
          <h3>Beri Rating Kelas</h3>
          <form action="rate_class.php" method="post">
            <input type="hidden" name="class_id" value="<?php echo $class_id; ?>">
            <label for="rating">Rating (1-5):</label><br>
            <input type="number" id="rating" name="rating" min="1" max="5" required><br><br>
            <button type="submit" class="btn btn-primary">Submit Rating</button>
          </form>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="assets/js/script.js"></script>
</body>
</html>
