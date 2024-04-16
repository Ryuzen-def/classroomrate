<?php session_start(); ?>
<?php include "header.php" ?>
<?php require_once 'includes/config.php'; ?>
<?php include 'includes/functions.php'; ?>
<div class="content-wrapper" bis_skin_checked="1" style="min-height: 1604.8px;">
  <section class="content-header">
    <div class="container-fluid" bis_skin_checked="1">
      <div class="row mb-2" bis_skin_checked="1">
        <div class="col-sm-6" bis_skin_checked="1">
          <h1>Edit Kelas</h1>
        </div>
        <div class="col-sm-6" bis_skin_checked="1">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Edit Kelas</li>
          </ol>
        </div>
      </div>
    </div>
  </section>

  <section class="content">
    <div class="card">
      <div class="card-body">
      <?php
      // Ambil data kelas dari database berdasarkan ID
      $id = $_GET['id'];
      $class = getClassById($id);
      ?>
      <form action="includes/update_class.php" method="post">
        <input type="hidden" name="id" value="<?php echo $class['id']; ?>">
        <div class="form-group">
          <label for="name">Nama Kelas</label>
          <input type="text" class="form-control" id="name" name="name" value="<?php echo $class['name']; ?>" required>
        </div>
        <div class="form-group">
          <label for="teacher">Nama Guru</label>
          <input type="text" class="form-control" id="teacher" name="teacher" value="<?php echo $class['teacher']; ?>"
            required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
      </form>
      </div>
    </div>
</div>
</div>
<?php include "footer.php"?>