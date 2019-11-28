<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Buat Jadwal</Strong></li>
</ol>

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
		<label><strong>Content</strong></label>
		<textarea class="form-control" name="isi" rows="6" cols="100" required>Tulis Konten Anda Di Sini</textarea>
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