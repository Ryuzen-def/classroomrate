<?php
session_start();
if (!isset($_SESSION["username"])) {
    header("Location: login.php");
    exit(); // Pastikan untuk menghentikan eksekusi skrip setelah redirect
}
?>
<?php include "header.php" ?>
<?php include 'includes/functions.php'; ?>

<div class="content-wrapper" bis_skin_checked="1" style="min-height: 1604.8px;">
  <section class="content-header">
    <div class="container-fluid" bis_skin_checked="1">
      <div class="row mb-2" bis_skin_checked="1">
        <div class="col-sm-6" bis_skin_checked="1">
          <h1>Dashboard Page</h1>
        </div>
        <div class="col-sm-6" bis_skin_checked="1">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Dashboard Page</li>
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
        echo '
                <div class="col-md-6 col-lg-4 mb-4">
                  <div class="card">
                    <div class="card-header bg-danger text-white d-flex align-items-center">
                      <div class="card-header-icon bg-dark rounded-circle text-white mr-2 px-2">' . substr($class['name'], 0, 1) . '</div>
                      <div class="card-header-text">' . $class['name'] . '</div>
                    </div>
                    <div class="card-body">' . $class['teacher'] . '</div>
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
  </section>
</div>

<?php include "footer.php" ?>