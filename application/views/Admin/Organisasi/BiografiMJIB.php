<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Biografi MJIB</Strong></li>
</ol>

<?php foreach ($biografiMJIB as $data): ?>
    <div class="row justify-content-center" style="margin-bottom:20px">
        <div class="card col-10">
        <?php if ($data['image'] == '') {?>
            <div class="row justify-content-center">
                <img src="<?php echo base_url('assets/admin/img/noimage.jpg')?>" width="630" height="350"><br>
            </div>
        <?php } else {?>
                <div class="row justify-content-center">                     
                <img src="<?php echo base_url('assets/admin/img/biografi/' . $data['image'])?>" width="630" height="350"><br>
            </div>
        <?php } ?>
            <div class="card-body">
                <h3 class="card-title"><?php echo $data['judul'];?></h3>
                <p class="card-text"><small class="text-muted">Penulis : <?php echo $data['username'];?></small></p>
                <p class="card-text"><?php echo $data['biografi'];?></p>
                <p class="card-text"><small class="text-muted">Update : <?php echo $data['updated_at'];?></small></p>
            </div>
            <a class="btn btn-outline-primary" href="<?php echo site_url('Admin/EditBiografiMJIB/' . $data['id'])?>" style="margin:20px">Edit</a>
        </div>
    </div>

<?php endforeach; ?>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>