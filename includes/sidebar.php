<!DOCTYPE html>
<html lang="en">

<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    @media (min-width: 768px) {
      .offcanvas-start {
        width: 250px;
      }
      .offcanvas-start.offcanvas {
        transform: translateX(-100%);
        visibility: visible;
      }
      .offcanvas-start.offcanvas.show {
        transform: translateX(0);
      }
    }
  </style>
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="offcanvas offcanvas-start" id="demo">
        <div class="offcanvas-header">
          <h1 class="offcanvas-title">Heading</h1>
          <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
        </div>
        <div class="offcanvas-body">
          <div class="sidebar-header bg-primary text-white py-3">
            <h3 class="m-3">Classroom</h3>
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link text-white" href="index.php">
                  <i class="fa fa-home mr-2"></i>Beranda
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="calender.php">
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
      </div>
    </div>
  </nav>
</body>

</html>
