<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
	<li class="breadcrumb-item active"><Strong>Edit Jadwal</Strong></li>
</ol>

<?php foreach ($JadwalData as $data) {?>
<form action="<?php echo site_url('Admin/UpdateJadwal/'. $data['id']);?>" method="post" enctype="multipart/form-data" style="padding:30px">
	<?php if ($data['image'] == '') {?>
		<img src="<?php echo base_url('assets/admin/img/noimage.jpg')?>" width="630" height="350"><br>
	<?php } else {?>
		<img src="<?php echo base_url('assets/admin/img/jadwal/' . $data['image'])?>" width="630" height="350"><br>
	<?php } ?>
	<div class="form-group">
		<label><strong>Image</strong></label>
        <input type="file" name="image" class="form-control">
        <input type="text" name="imageVal" hidden value="<?php echo $data['image'];?>">
    </div> 
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
		<textarea class="form-control" name="isi" rows="6" cols="100"><?php echo $data['isi'];?></textarea>
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

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>
