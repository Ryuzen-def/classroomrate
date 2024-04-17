<?php session_start(); ?>
<?php include "header.php" ?>
<?php require_once 'includes/config.php'; ?>
<?php include 'includes/functions.php'; ?>
<div class="content-wrapper" bis_skin_checked="1" style="min-height: 1604.8px;">
  <section class="content-header">
    <div class="container-fluid" bis_skin_checked="1">
      <div class="row mb-2" bis_skin_checked="1">
        <div class="col-sm-6" bis_skin_checked="1">
          <h1>Tambah Kelas</h1>
        </div>
        <div class="col-sm-6" bis_skin_checked="1">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Tambah Kelas</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

  <section class="content">
    <div class="col-md-9 col-lg-10 main-content card">
      <div class="card-body">
        <form action="includes/add_class.php" method="post">
          <div class="form-group">
            <label for="name">Nama Kelas</label>
            <input type="text" class="form-control" id="name" name="name" required>
          </div>
          <div class="form-group">
            <label for="teacher">Nama Guru</label>
            <input type="text" class="form-control" id="teacher" name="teacher" required>
          </div>
          <button type="submit" class="btn btn-primary">Tambah</button>
        </form>
      </div>
    </div>
</div>

<?php include "footer.php"?>
