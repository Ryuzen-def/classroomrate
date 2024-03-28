<?php require_once 'includes/config.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Kelas</title>
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
        <h2>Edit Kelas</h2>
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
            <input type="text" class="form-control" id="teacher" name="teacher" value="<?php echo $class['teacher']; ?>" required>
          </div>
          <button type="submit" class="btn btn-primary">Update</button>
        </form>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="assets/js/script.js"></script>
</body>
</html>