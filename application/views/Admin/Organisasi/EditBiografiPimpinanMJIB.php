<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

Edit Biografi Pimpinan MJIB <br><br>
<?php foreach ($biografiPimpinanMJIB as $data): ?>
<form action="<?php echo site_url('Admin/UpdateBiografiPimpinanMJIB/' . $data['id']);?>" method="post">

image : <input type="text" name="image" value="<?php echo $data['image'];?>"> <br>
biografi : <input type="text" name="biografi" value="<?php echo $data['biografi'];?>"> <br>
judul : <input type="text" name="judul" value="<?php echo $data['judul'];?>"> <br>
username : <input type="text" name="username" value="<?php echo $data['username'];?>"> <br>
updated_at : <input type="text" name="updated_at" value="<?php echo $data['updated_at'];?>"> <br><br>

<button type="submit">Edit</button>

</form>
<?php endforeach; ?>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>