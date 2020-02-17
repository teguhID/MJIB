<?php
    $this->load->view('Admin/Layout/Header');
?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Foto</Strong></li>
</ol>

	<div class="container">
	<div class="row">
		
		
		<div class="col-6" id="image">
		<h4>Upload Foto</h4>
		<hr>
		<form method="POST" action="<?php echo site_url('Admin/UploadImage');?>" enctype="multipart/form-data">
			<div class="form-group">
				<input type="file" name="foto[]" multiple accept="image/*" (change)="handleFileInput($event.target.files)">
			</div>
			<div class="form-group">
				  <label for="">Tag</label>
				  <select multiple class="form-control" name="tag">
				  	<?php foreach ($tagFoto as $data) {?>
						<option value="<?php echo $data['tag']?>"><?php echo $data['tag']?></option>
					<?php }?>
				  </select>
				  <a id="#editTag" href="" class="btn-sm btn-secondary float-right mt-3">Edit Tag</a>
			</div>
			<br>
			<div class="form-group">
				<input class="btn btn-primary" type="submit" value="Submit">
			</div>
		</form>
		</div>


		<!-- <div class="col-6" id="tag">
		<h4>
			Edit Tag
			<a class="float-right btn-sm btn-secondary" href="#"><i class="fa fa-plus"></i></a>
		</h4>
		<hr>
		<form method="POST" action="<?php echo site_url('Admin/UploadImage');?>" enctype="multipart/form-data">
			<ul class="list-group list-group-flush">
				<?php foreach ($tagFoto as $data) {?>
					<li class="list-group-item"><?php echo $data['tag']?>
						<a class="float-right btn-sm btn-danger mr-1 ml-1" href="#"><i class="fa fa-trash"></i></a>
						<a class="float-right btn-sm btn-info mr-1 ml-1" href="#"><i class="fa fa-pencil-alt"></i></a>
					</li>
				<?php }?>
			</ul>
		</form>
		</div> -->


	</div>
	</div>

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

<?php
    $this->load->view('Admin/Layout/Footer');
?>

<script>

</script>