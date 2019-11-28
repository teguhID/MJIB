<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey; margin-bottom: -20px">
    <li class="breadcrumb-item active"><Strong>Guru</Strong></li>
</ol>

<?php foreach ($biografiPimpinanMJIB as $data): ?>
<form action="<?php echo site_url('Admin/UpdateBiografiPimpinanMJIB/' . $data['id']);?>" method="post" enctype="multipart/form-data" style="padding:30px">
<?php if ($data['image'] == '') {?>
        <img src="<?php echo base_url('assets/admin/img/noimage.jpg')?>" width="630" height="350"><br>
    <?php } else {?>
        <img src="<?php echo base_url('assets/admin/img/biografi/' . $data['image'])?>" width="630" height="350"><br>
    <?php } ?>  
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">Image</label>
    <div class="col-sm-8">
      <input type="file" name="image" class="form-control">
      <input type="text" name="imageVal" hidden value="<?php echo $data['image'];?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">Penulis</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" name="username" value="<?php echo $data['username'];?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">Judul</label>
    <div class="col-sm-8">
      <input type="text" name="judul" class="form-control" value="<?php echo $data['judul'];?>">
    </div>
  </div>
  <div class="form-group row">
    <label for="colFormLabel" class="col-sm-2 col-form-label">Konten</label>
    <div class="col-sm-8">
        <textarea class="form-control" id="mytextarea" name="biografi" rows="4"><?php echo $data['biografi'];?></textarea>
    </div>
  </div>
  <input type="text" name="updated_at" value=<?php echo date("Y-m-d");?> hidden>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
<?php endforeach; ?>

        <script>
          $(document).ready(function () {
            $("#dashboard").removeClass("active")
            $("#about").addClass("active")
            $("#tausiah").removeClass("active")
            $("#jadwal").removeClass("active")
            $("#media").removeClass("active")
            $("#event").removeClass("active")
            $("#dokumentasi").removeClass("active")
          });
        </script> 

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>