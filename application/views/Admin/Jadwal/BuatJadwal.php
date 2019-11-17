<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<form action="<?php echo site_url('Admin/PostJadwal');?>" method="post" enctype="multipart/form-data" style="padding:30px">
	<div class="form-group">
	  <label><strong>Judul</strong></label>
	  <input type="text" class="form-control" name="judul">
	</div>
	<div class="form-group">
	  <label><strong>Hari</strong></label>
	  <input type="text" class="form-control" name="hari">
	</div>
	<div class="form-group">
		<label><strong>Isi</strong></label>
		<textarea id="mytextarea" name="isi"><p style="color:grey">Tulis Konten Anda Di Sini</p></textarea>
	</div>
	<div class="form-group">
	  <label><strong>Jam/Waktu</strong></label>
	  <input type="text" class="form-control" name="jam">
	</div>
	<div class="form-group">
	  <label><strong>Keterangan</strong></label>
	  <input type="text" class="form-control" name="keterangan">
	</div>
	<input type="text" name="updated_at" value=<?php echo date("d-m-Y");?> hidden>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>