<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Foto</Strong></li>
</ol>

<form action="<?php echo site_url('Admin/UploadImage');?>" method="post" enctype="multipart/form-data" style="padding:30px">
	<div class="form-group">
	  <label><strong>Image</strong></label>
	  <input type="file" class="form-control" name="image[]" multiple required>
	</div>
	<div class="form-group">
	  <label><strong>Tag</strong></label>
	  <input type="text" class="form-control" name="tag" required>
	</div>
	<input type="text" name="updated_at" value=<?php echo date("d-m-Y");?> hidden>
	<button type="submit" class="btn btn-primary">Submit</button>
</form>

<script>
	$(document).ready(function () {
		$("#dashboard").removeClass("active")
		$("#about").removeClass("active")
		$("#tausiah").removeClass("active")
		$("#jadwal").removeClass("active")
		$("#media").removeClass("active")
		$("#event").removeClass("active")
		$("#dokumentasi").addClass("active")
	});
</script>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>