<?php
    $this->load->view('Admin/Layout/Header');
?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Video</Strong></li>
</ol>

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