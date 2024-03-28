<?php require_once 'includes/config.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Daftar Kelas</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
  <?php include 'includes/functions.php'; ?>

  <div class="container-fluid">
    <div class="row">
      <?php include 'includes/sidebar.php'; ?>
      <div class="col-md-9 col-lg-10 main-content">
        <h2>Daftar Kelas</h2>
        <div class="row">
          <?php
            $classes = getAllClasses();
            foreach ($classes as $class) {
              // Ambil nilai rating dari database
              $ratings = getClassRatings($class['id']);
              $average_rating = calculateAverageRating($ratings);

              echo '
                <div class="col-md-6 col-lg-4 mb-4">
                  <div class="card">
                    <a href="class_detail.php?id=' . $class['id'] . '" style="text-decoration: none; color: inherit;">
                      <div class="card-header bg-danger text-white d-flex align-items-center">
                        <div class="card-header-icon bg-dark rounded-circle text-white mr-2 px-2">' . substr($class['name'], 0, 1) . '</div>
                        <div class="card-header-text">' . $class['name'] . '</div>
                      </div>
                      <div class="card-body">' . $class['teacher'] . '</div>
                      <div class="card-footer">
                        <p>Rating: ' . $average_rating . '</p>
                      </div>
                    </a>
                    <div class="card-footer text-right">
                      <a href="edit_class.php?id=' . $class['id'] . '" class="btn btn-primary mr-2">Edit</a>
                      <a href="delete_class.php?id=' . $class['id'] . '" class="btn btn-danger">Hapus</a>
                    </div>
                  </div>
                </div>
              ';
            }
          ?>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="assets/js/script.js"></script>
</body>
</html>
