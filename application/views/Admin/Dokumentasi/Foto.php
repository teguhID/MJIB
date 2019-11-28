<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Foto</Strong></li>
</ol>

<form runat="server">
  <input type='file' id="imgInp" />
  <img id="blah" src="#" alt="your image" />
</form>

<script>
    function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function(e) {
        $('#blah').attr('src', e.target.result);
        }
        
        reader.readAsDataURL(input.files[0]);
    }
    }

    $("#imgInp").change(function() {
    readURL(this);
    });
</script>

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