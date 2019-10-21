<?php $basedir = realpath(__DIR__); include($basedir . "..\..\..\Layout\Header.php");?>

<div class="container">
<a href="<?php echo site_url('Admin/RiyadushSholihinHalamanBuatData')?>" class="btn btn-success" style="margin-right: 10px; margin-bottom:-20px"><i class="fas fa-plus-circle" style="margin-right:8px"></i> Tambah Data</a>
  <div class="row justify-content-center">
    <div class="col-10" style="margin-top:3vw">
        <table class="table" id="dataTable">
        <thead>
            <tr>
                <th class="text-center">No</th>
                <th class="text-center">Judul</th>
                <th class="text-center">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php $no=1; foreach ($RiyadushSholihinList as $data) {?>
                <tr> 
                    <th width="10%" class="text-center"><?php echo $no++;?></th>
                    <td width="70%" class="text-center"><a href="<?php echo site_url('Admin/DetailRiyadushSholihin/' . $data['id'])?>" style="color:black; text-decoration:none" onmouseover="this.style.color='green';" onmouseout="this.style.color='black';"><?php echo $data['judul']; ?></a></td>
                    <td width="20%" class="text-center">
                        <a href="<?php echo site_url('Admin/RiyadushSholihinHalamanEditData/' . $data['id'])?>" class="btn-sm btn-info"><i class="fas fa-pencil-alt"></i></a>
                        <a href="<?php echo '/#'?>" class="btn-sm btn-secondary"><i class="fa fa-globe"></i></a>
                        <a href="<?php echo site_url('Admin/RiyadushSholihinHapus/' . $data['id'] . '/' . $data['image'])?>" class="btn-sm btn-danger" onclick="return confirm('Yakin Igin di Hapus ?')"><i class="fas fa-trash"></i></a>
                    </td>
                </tr>
            <?php }; ?>
        </tbody>
        </table>
    </div>
  </div>
</div>
<?php $basedir = realpath(__DIR__); include($basedir . "..\..\..\Layout\Footer.php");?>