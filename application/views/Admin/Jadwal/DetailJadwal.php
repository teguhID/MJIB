<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Detail Jadwal</Strong></li>
</ol>

<?php foreach ($JadwalData as $data): ?>
    <a href="<?php echo site_url('Admin/Jadwal')?>" class="btn-lg btn-info"><i class="fas fa-home"></i></a>
    <a href="<?php echo site_url('Admin/Jadwal')?>" class="btn-lg btn-secondary"><i class="fas fa-globe"></i></a>
    <div class="row justify-content-center" style="margin-bottom:20px; margin-top:50px">
        <div class="card col-10">
        <i class="fas fa-exclamation-triangle" style="margin:10px; color:red"><strong> preview</strong></i>
            <div class="card-body">
                <h3 class="card-title"><?php echo $data['judul'];?></h3>
                <p class="card-text"><?php echo $data['hari'];?></p>
                <p class="card-text"><?php echo $data['isi'];?></p>
                <h6 class="card-text"><?php echo $data['jam'];?></h6>
                <p class="card-text"><b><?php echo $data['keterangan'];?></b></p>
                <p class="card-text"><small class="text-muted">Update : <?php echo $data['updated_at'];?></small></p>
            </div>
            <a class="btn btn-outline-primary" href="<?php echo site_url('Admin/Detailjadwal/' . $data['id'] . '/' . 'EditJadwal')?>" style="margin:20px">Edit</a>
        </div>
    </div>

<?php endforeach; ?>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>