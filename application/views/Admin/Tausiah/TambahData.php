<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");
$uploadImage = 'Admin/upload_image';
$deleteImage = 'Admin/delete_image';
?>

<form action="<?php echo site_url('Admin/TausiahBuatData');?>" method="post" enctype="multipart/form-data" style="padding:30px">
	<div class="form-group">
	  <label><strong>Image</strong></label>
	  <input type="file" class="form-control" name="image" required>
	</div>
	<div class="form-group">
	  <label><strong>Penulis</strong></label>
	  <input type="text" class="form-control" name="username" required>
	</div>
	<div class="form-group">
	  <label><strong>Judul</strong></label>
	  <input type="text" class="form-control" name="judul" required>
	</div>
	<div class="form-group">
		<label><strong>Kitab</strong></label>
		<select class="form-control" name="kitab">
			<option value="Bidayatul Hidayah">Bidayatul Hidayah</option>
			<option value="Aqidatul Awam">Aqidatul Awam</option>
			<option value="Nashohih Diniyah">Nashohih Diniyah</option>
			<option value="Ihya Ulumuddin">Ihya Ulumuddin</option>
			<option value="Riyadhus Shalihin">Riyadhus Shalihin</option>
			<option value="Syarah Ratibul Haddad">Syarah Ratibul Haddad</option>
			<option value="Syarah Hadits Jibril">Syarah Hadits Jibril</option>
		</select>
	</div>
	<div class="form-group">
		<label><strong>Content</strong></label>
		<textarea class="form-control" name="content" rows="4" cols="100" required>Tulis Konten Anda Di Sini</textarea>
	</div>
	<input type="text" name="updated_at" value=<?php echo date("Y-m-d H:i:s");?> hidden>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>