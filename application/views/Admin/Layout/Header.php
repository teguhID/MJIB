<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin - Dashboard</title>

  <!-- Custom fonts for this template-->
  <link href="<?php echo base_url('assets/admin/')?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="<?php echo base_url('assets/admin/')?>vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="<?php echo base_url('assets/admin/')?>css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

  <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

    <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="<?php echo base_url('assets/admin/')?>#">
      <i class="fas fa-bars"></i>
    </button>

    <!-- Navbar Search -->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      
    </form>

    <!-- Navbar -->
    <ul class="navbar-nav ml-auto ml-md-0">
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="<?php echo base_url('assets/admin/')?>#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-bell fa-fw"></i>
          <span class="badge badge-danger">9+</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="alertsDropdown">
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#">Action</a>
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="<?php echo base_url('assets/admin/')?>#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-envelope fa-fw"></i>
          <span class="badge badge-danger">7</span>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="messagesDropdown">
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#">Action</a>
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#">Something else here</a>
        </div>
      </li>
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="<?php echo base_url('assets/admin/')?>#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-user-circle fa-fw"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#">Settings</a>
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#">Activity Log</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="<?php echo base_url('assets/admin/')?>#" data-toggle="modal" data-target="#logoutModal">Logout</a>
        </div>
      </li>
    </ul>

  </nav>

  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="sidebar navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo base_url('assets/admin/')?>index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="<?php echo base_url('assets/admin/')?>#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Organisasi</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
          <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/BiografiMJIB" style="font-size: 14px;">Biografi MJIB</a>
          <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/BiografiPimpinanMJIB" style="font-size: 14px;">Biografi Pimpinan MJIB</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="<?php echo base_url('assets/admin/AqidatulAwam')?>#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Tausiah</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/BidayatulHidayah" style="font-size: 14px;">Bidayatul Hidayah</a>
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/IhyaUlumuddin" style="font-size: 14px;">Ihya Ulumuddin</a>
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/KitabRiyadushSholihin" style="font-size: 14px;">Kitab Riyadush Sholihin</a>
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/NashoihDiniyah" style="font-size: 14px;">Nashoih Diniyah</a>
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/SyarahHadistJibril" style="font-size: 14px;">Syarah Hadist Jibril</a>
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/SyarahRatibAlHaddad" style="font-size: 14px;">Syarah Ratib Al Haddad</a>
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/JadwalAbuya" style="font-size: 14px;">Jadwal Abuya</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="<?php echo base_url('assets/admin/')?>#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Jadwal MJIB</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/SocialMedia" style="font-size: 14px;">Jadwal Abuya</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="<?php echo base_url('assets/admin/')?>#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Media</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/Qasidah" style="font-size: 14px;">Social Media</a>
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/Event" style="font-size: 14px;">Qasidah</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link" href="<?php echo site_url('')?>/Admin/">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Event</span>
        </a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="<?php echo base_url('assets/admin/')?>#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-fw fa-folder"></i>
          <span>Dokumentasi</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/Foto" style="font-size: 14px;">Foto</a>
            <a class="dropdown-item" href="<?php echo site_url('')?>/Admin/Video" style="font-size: 14px;">Video</a>
        </div>
      </li>
    </ul>

    <div id="content-wrapper">
    <div class="container-fluid">
