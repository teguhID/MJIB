<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>

<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Edit Data Tausiah</Strong></li>
</ol>

<?php foreach ($tausiahData as $data) {?>
  <form action="<?php echo site_url('Admin/TausiahEditData/' . $data['id']);?>" method="post" enctype="multipart/form-data" style="padding:30px">
      <?php if ($data['image'] == '') {?>
          <img src="<?php echo base_url('assets/admin/img/noimage.jpg')?>" width="630" height="350"><br>
      <?php } else {?>
          <img src="<?php echo base_url('assets/admin/img/tausiah/' . $data['image'])?>" width="630" height="350"><br>
      <?php } ?>  
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">Image</label>
      <div class="col-sm-8">
        <input type="file" name="image" class="form-control">
        <input type="text" name="imageVal" hidden value="<?php echo $data['image'];?>">
      </div>
    </div>
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">Penulis</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" name="username" value="<?php echo $data['username'];?>">
      </div>
    </div>
    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">Judul</label>
      <div class="col-sm-8">
        <input type="text" name="judul" class="form-control" value="<?php echo $data['judul'];?>">
      </div>
    </div>

    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">Kitab</label>
      <div class="col-sm-8">
         <select name="kitab" class="form-control" value="<?php echo $data['kitab'];?>">
          <option <?php if($data['kitab'] == 'Bidayatul Hidayah'){ echo 'selected="selected"'; } ?> value="Bidayatul Hidayah">Bidayatul Hidayah</option>
          <option <?php if($data['kitab'] == 'Aqidatul Awam'){ echo 'selected="selected"'; } ?> value="Aqidatul Awam">Aqidatul Awam</option>
          <option <?php if($data['kitab'] == 'Nashohih Diniyah'){ echo 'selected="selected"'; } ?> value="Nashohih Diniyah">Nashohih Diniyah</option>
          <option <?php if($data['kitab'] == 'Ihya Ulumuddin'){ echo 'selected="selected"'; } ?> value="Ihya Ulumuddin">Ihya Ulumuddin</option>
          <option <?php if($data['kitab'] == 'Riyadhus Shalihin'){ echo 'selected="selected"'; } ?> value="Riyadhus Shalihin">Riyadhus Shalihin</option>
          <option <?php if($data['kitab'] == 'Syarah Ratibul Haddad'){ echo 'selected="selected"'; } ?> value="Syarah Ratibul Haddad">Syarah Ratibul Haddad</option>
          <option <?php if($data['kitab'] == 'Syarah Hadits Jibril'){ echo 'selected="selected"'; } ?> value="Syarah Hadits Jibril">Syarah Hadits Jibril</option>
        </select>
      </div>
    </div>

    <div class="form-group row">
      <label for="colFormLabel" class="col-sm-2 col-form-label">Konten</label>
      <div class="col-sm-8">
        <textarea class="form-control" name="content" rows="12" cols="100"><?php echo $data['content'];?></textarea>
      </div>
    </div>
    <input type="text" name="updated_at" value=<?php echo date("Y-m-d H:i:s");?> hidden>
    <div class="d-flex justify-content-center">
      <button type="submit" class="buttonfx curtainup">Submit</button>
    </div>
  </form>
<?php }; ?>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>