<?php
    $this->load->view('Admin/Layout/Header');
?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Detail Jadwal</Strong></li>
</ol>

<?php foreach ($JadwalData as $data): ?>
    <a href="<?php echo site_url('Admin/Jadwal')?>" class="btn-lg btn-info"><i class="fas fa-home"></i></a>
    <a href="<?php echo site_url('Admin/Jadwal')?>" class="btn-lg btn-secondary"><i class="fas fa-globe"></i></a>
    <div class="row justify-content-center" style="margin-bottom:20px; margin-top:50px">
        <div class="card col-10">
        <i class="fas fa-exclamation-triangle" style="margin:10px; color:red"><strong> preview</strong></i>
        <?php if ($data['image'] == '') {?>
            <div class="row justify-content-center">
                <img src="<?php echo base_url('assets/admin/img/noimage.jpg')?>" width="630" height="350"><br>
            </div>
        <?php } else {?>
            <div class="row justify-content-center">                     
                <img src="<?php echo base_url('assets/admin/img/jadwal/' . $data['image'])?>" width="630" height="350"><br>
            </div>
        <?php } ?>
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

        <script>
          $(document).ready(function () {
            $("#dashboard").removeClass("active")
            $("#about").removeClass("active")
            $("#tausiah").removeClass("active")
            $("#jadwal").addClass("active")
            $("#media").removeClass("active")
            $("#event").removeClass("active")
            $("#dokumentasi").removeClass("active")
          });
        </script> 

<?php
    $this->load->view('Admin/Layout/Footer');
?>