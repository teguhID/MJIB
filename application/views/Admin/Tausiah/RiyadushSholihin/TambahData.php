<?php $basedir = realpath(__DIR__); include($basedir . "..\..\..\Layout\Header.php");
$uploadImage = 'Admin/upload_image';
$deleteImage = 'Admin/delete_image';
?>

<form action="<?php echo site_url('Admin/RiyadushSholihinBuatData');?>" method="post" enctype="multipart/form-data" style="padding:30px">
	<div class="form-group">
	  <label><strong>Image</strong></label>
	  <input type="file" class="form-control" name="image">
	</div>
	<div class="form-group">
	  <label><strong>Penulis</strong></label>
	  <input type="text" class="form-control" name="username">
	</div>
	<div class="form-group">
	  <label><strong>Judul</strong></label>
	  <input type="text" class="form-control" name="judul">
	</div>
	<div class="form-group">
		<label><strong>Content</strong></label>
		<textarea id="mytextarea" name="content"><p style="color:grey">Tulis Konten Anda Di Sini</p></textarea>
	</div>
	<input type="text" name="updated_at" value=<?php echo date("Y-m-d");?> hidden>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\..\Layout\Footer.php");?>