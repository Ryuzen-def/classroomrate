<?php session_start(); ?>
<?php include "header.php" ?>
<?php require_once 'includes/config.php'; ?>
<?php include 'includes/functions.php'; ?>
<div class="content-wrapper" bis_skin_checked="1" style="min-height: 1604.8px;">
  <section class="content-header">
    <div class="container-fluid" bis_skin_checked="1">
      <div class="row mb-2" bis_skin_checked="1">
        <div class="col-sm-6" bis_skin_checked="1">
          <h1>Halaman Kelas</h1>
        </div>
        <div class="col-sm-6" bis_skin_checked="1">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Halaman Kelas</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

  <section class="content">
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
<?php include "footer.php"?>