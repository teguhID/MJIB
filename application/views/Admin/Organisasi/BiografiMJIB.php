<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

Biografi MJIB <br><br>
<?php foreach ($biografiMJIB as $data): ?>
<?php 
 echo 'gambar : ' . $data['image'] . '<br>';
 echo 'biografi : ' . $data['biografi'] . '<br>';
 echo 'judul : ' . $data['judul'] . '<br>';
 echo 'username : ' . $data['username'] . '<br>';
 echo 'updated_at : ' . $data['updated_at'] . '<br>' . '<br>';
?>
<a href="<?php echo site_url('Admin/EditBiografiMJIB/' . $data['id'])?>">Edit</a>
<?php endforeach; ?>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>