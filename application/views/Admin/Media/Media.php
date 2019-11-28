<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Media</Strong></li>
</ol>

<script>
	$(document).ready(function () {
		$("#dashboard").removeClass("active")
		$("#about").removeClass("active")
		$("#tausiah").removeClass("active")
		$("#jadwal").removeClass("active")
		$("#media").addClass("active")
		$("#event").removeClass("active")
		$("#dokumentasi").removeClass("active")
	});
</script>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>