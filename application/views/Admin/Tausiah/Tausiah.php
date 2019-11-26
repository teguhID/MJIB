<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Header.php");?>
<ol class="breadcrumb" style="box-shadow: 2px 2px 5px grey;">
    <li class="breadcrumb-item active"><Strong>Data Tausiah</Strong></li>
</ol>

<div class="container">

<div class="row justify-content-center">
    <div class="col-10" style="margin-top:1vw">
        <a href="<?php echo site_url('Admin/TausiahHalamanBuatData')?>" class="buttonAdd"><span>Tambah Data </span></a>  
        <table class="table" id="dataTable">
        <thead>
            <tr>
                <th class="text-center">No</th>
                <th class="text-center">Judul</th>
                <th class="text-center">Kitab</th>
                <th class="text-center">Action</th>
            </tr>
        </thead>
        <tbody>
            <?php $no=1; foreach ($tausiahData as $data) {?>
                <tr> 
                    <th width="10%" class="text-center"><?php echo $no++;?></th>
                    <td width="40%" class="text-center"><a href="<?php echo site_url('Admin/DetailTausiah/' . $data['id'])?>" style="color:black; text-decoration:none" onmouseover="this.style.color='green';" onmouseout="this.style.color='black';"><?php echo $data['judul']; ?></a></td>
                    <td width="30%" class="text-center"><?php echo $data['kitab']; ?></td>
                    <td width="20%" class="text-center">
                        <a href="<?php echo site_url('Admin/TausiahHalamanEditData/' . $data['id'])?>" class="btn-sm btn-info"><i class="fas fa-pencil-alt"></i></a>
                        <a href="<?php echo '/#'?>" class="btn-sm btn-secondary"><i class="fa fa-globe"></i></a>
                        <a href="<?php echo site_url('Admin/TausiahHapus/' . $data['id'] . '/' . $data['image'])?>" class="btn-sm btn-danger" onclick="return confirm('Yakin Igin di Hapus ?')"><i class="fas fa-trash"></i></a>
                    </td>
                </tr>
            <?php }; ?>
        </tbody>
        </table>
    </div>
  </div>
</div>

<?php $basedir = realpath(__DIR__); include($basedir . "..\..\Layout\Footer.php");?>