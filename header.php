<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="https://adminlte.io/themes/v3/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <link rel="stylesheet" href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css?v=3.2.0">
</head>

<body>
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="index.php" class="nav-link">Home</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Contact</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="add_class.php" class="nav-link">Add Class</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                    <i class="fas fa-search"></i>
                </a>
                <div class="navbar-search-block" bis_skin_checked="1">
                    <form class="form-inline">
                        <div class="input-group input-group-sm" bis_skin_checked="1">
                            <input class="form-control form-control-navbar" type="search" placeholder="Search"
                                aria-label="Search">
                            <div class="input-group-append" bis_skin_checked="1">
                                <button class="btn btn-navbar" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="far fa-comments"></i>
                    <span class="badge badge-danger navbar-badge">3</span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" bis_skin_checked="1">
                    <a href="#" class="dropdown-item">

                        <div class="media" bis_skin_checked="1">
                            <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                            <div class="media-body" bis_skin_checked="1">
                                <h3 class="dropdown-item-title">
                                    Brad Diesel
                                    <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                                </h3>
                                <p class="text-sm">Call me whenever you can...</p>
                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                            </div>
                        </div>

                    </a>
                    <div class="dropdown-divider" bis_skin_checked="1"></div>
                    <a href="#" class="dropdown-item">

                        <div class="media" bis_skin_checked="1">
                            <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                            <div class="media-body" bis_skin_checked="1">
                                <h3 class="dropdown-item-title">
                                    John Pierce
                                    <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                                </h3>
                                <p class="text-sm">I got your message bro</p>
                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                            </div>
                        </div>

                    </a>
                    <div class="dropdown-divider" bis_skin_checked="1"></div>
                    <a href="#" class="dropdown-item">

                        <div class="media" bis_skin_checked="1">
                            <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                            <div class="media-body" bis_skin_checked="1">
                                <h3 class="dropdown-item-title">
                                    Nora Silvester
                                    <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                                </h3>
                                <p class="text-sm">The subject goes here</p>
                                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                            </div>
                        </div>

                    </a>
                    <div class="dropdown-divider" bis_skin_checked="1"></div>
                    <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
                </div>
            </li>

            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="far fa-bell"></i>
                    <span class="badge badge-warning navbar-badge">15</span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" bis_skin_checked="1">
                    <span class="dropdown-item dropdown-header">15 Notifications</span>
                    <div class="dropdown-divider" bis_skin_checked="1"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-envelope mr-2"></i> 4 new messages
                        <span class="float-right text-muted text-sm">3 mins</span>
                    </a>
                    <div class="dropdown-divider" bis_skin_checked="1"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-users mr-2"></i> 8 friend requests
                        <span class="float-right text-muted text-sm">12 hours</span>
                    </a>
                    <div class="dropdown-divider" bis_skin_checked="1"></div>
                    <a href="#" class="dropdown-item">
                        <i class="fas fa-file mr-2"></i> 3 new reports
                        <span class="float-right text-muted text-sm">2 days</span>
                    </a>
                    <div class="dropdown-divider" bis_skin_checked="1"></div>
                    <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                    <i class="fas fa-expand-arrows-alt"></i>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-widget="control-sidebar" data-controlsidebar-slide="true" href="#"
                    role="button">
                    <i class="fas fa-th-large"></i>
                </a>
            </li>
        </ul>
    </nav>

    <aside class="main-sidebar sidebar-dark-primary elevation-4">

        <a href="#" class="brand-link">
            <span class="brand-text font-weight-bold">Classroom Rate</span>
        </a>

        <div class="sidebar os-host os-theme-light os-host-overflow os-host-overflow-y os-host-resize-disabled os-host-scrollbar-horizontal-hidden os-host-transition"
            bis_skin_checked="1">
            <div class="os-resize-observer-host observed" bis_skin_checked="1">
                <div class="os-resize-observer" style="left: 0px; right: auto;" bis_skin_checked="1"></div>
            </div>
            <div class="os-size-auto-observer observed" style="height: calc(100% + 1px); float: left;"
                bis_skin_checked="1">
                <div class="os-resize-observer" bis_skin_checked="1"></div>
            </div>
            <div class="os-content-glue" style="margin: 0px -8px; width: 249px; height: 680px;" bis_skin_checked="1">
            </div>
            <div class="os-padding" bis_skin_checked="1">
                <div class="os-viewport os-viewport-native-scrollbars-invisible" style="overflow-y: scroll;"
                    bis_skin_checked="1">
                    <div class="os-content" style="padding: 0px 8px; height: 100%; width: 100%;" bis_skin_checked="1">

                        <div class="user-panel mt-3 pb-3 mb-3 d-flex" bis_skin_checked="1">
                            <div class="image" bis_skin_checked="1">
                                <img src="https://adminlte.io/themes/v3/dist/img/user2-160x160.jpg" class="img-circle elevation-2"
                                    alt="User Image">
                            </div>
                            <div class="info" bis_skin_checked="1">
                                <a href="#" class="d-block"><?= $_SESSION["username"] ?></a>
                            </div>
                        </div>

                        <div class="form-inline" bis_skin_checked="1">
                            <div class="sidebar-search-results" bis_skin_checked="1">
                                <div class="list-group" bis_skin_checked="1"><a href="#" class="list-group-item">
                                        <div class="search-title" bis_skin_checked="1"><strong
                                                class="text-light"></strong>N<strong
                                                class="text-light"></strong>o<strong class="text-light"></strong>
                                            <strong class="text-light"></strong>e<strong
                                                class="text-light"></strong>l<strong
                                                class="text-light"></strong>e<strong
                                                class="text-light"></strong>m<strong
                                                class="text-light"></strong>e<strong
                                                class="text-light"></strong>n<strong
                                                class="text-light"></strong>t<strong class="text-light"></strong>
                                            <strong class="text-light"></strong>f<strong
                                                class="text-light"></strong>o<strong
                                                class="text-light"></strong>u<strong
                                                class="text-light"></strong>n<strong
                                                class="text-light"></strong>d<strong
                                                class="text-light"></strong>!<strong class="text-light"></strong></div>
                                        <div class="search-path" bis_skin_checked="1"></div>
                                    </a></div>
                            </div>
                        </div>

                        <nav class="mt-2">
                            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                                data-accordion="false">

                                <li class="nav-item">
                                    <a href="index.php" class="nav-link">
                                        <i class="nav-icon fas fa-tachometer-alt"></i>
                                        <p>
                                            Dashboard
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="calender.php" class="nav-link">
                                        <i class="nav-icon fa fa-calendar"></i>
                                        <p>
                                            Kalender
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="nav-icon fa fa-clipboard-list"></i>
                                        <p>
                                            Daftar Tugas
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="classes.php" class="nav-link">
                                        <i class="nav-icon fas fa-chalkboard-teacher"></i>
                                        <p>
                                            Daftar Kelas
                                        </p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="#" class="nav-link">
                                        <i class="nav-icon fas fa-cog"></i>
                                        <p>
                                            Setelan
                                        </p>
                                    </a>
                                </li>
                                <hr>
                                <a href="logout.php" class="btn btn-danger">Logout</a>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="os-scrollbar os-scrollbar-horizontal os-scrollbar-unusable os-scrollbar-auto-hidden"
                bis_skin_checked="1">
                <div class="os-scrollbar-track" bis_skin_checked="1">
                    <div class="os-scrollbar-handle" style="width: 100%; transform: translate(0px, 0px);"
                        bis_skin_checked="1"></div>
                </div>
            </div>
            <div class="os-scrollbar os-scrollbar-vertical os-scrollbar-auto-hidden" bis_skin_checked="1">
                <div class="os-scrollbar-track" bis_skin_checked="1">
                    <div class="os-scrollbar-handle" style="height: 42.5891%; transform: translate(0px, 0px);"
                        bis_skin_checked="1"></div>
                </div>
            </div>
            <div class="os-scrollbar-corner" bis_skin_checked="1"></div>
        </div>

    </aside>