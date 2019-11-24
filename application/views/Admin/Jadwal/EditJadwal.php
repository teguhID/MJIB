<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Edit Jadwal</Strong></li>
</ol>

<?php foreach ($JadwalData as $data) {?>
<form action="<?php echo site_url('Admin/UpdateJadwal/'. $data['id']);?>" method="post" enctype="multipart/form-data" style="padding:30px">
	<div class="form-group">
	  <label><strong>Judul</strong></label>
	  <input type="text" class="form-control" name="judul" value="<?php echo $data['judul'];?>" ?>
	</div>
	<div class="form-group">
	  <label><strong>Hari</strong></label>
	  <input type="text" class="form-control" name="hari" value="<?php echo $data['hari'];?>">
	</div>
	<div class="form-group">
		<label><strong>Isi</strong></label>
		<textarea id="mytextarea" name="isi"><p style="color:grey"><?php echo $data['isi'];?></p></textarea>
	</div>
	<div class="form-group">
	  <label><strong>Jam/Waktu</strong></label>
	  <input type="text" class="form-control" name="jam" value="<?php echo $data['jam'];?>">
	</div>
  <div class="form-group">
	  <label><strong>Keterangan</strong></label>
	  <input type="text" class="form-control" name="keterangan" value="<?php echo $data['keterangan'];?>">
	</div>
	<input type="text" name="updated_at" value=<?php echo date("Y-m-d h:i:s");?> hidden>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>
<?php }; ?>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>