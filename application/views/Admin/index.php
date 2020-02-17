<?php
    $this->load->view('Admin/Layout/Header');
?>
<!-- /.container-fluid -->

        <div class="row" style="padding: 30px">

          <!-- Icon Cards Jadwal Hari Ini-->
          <div class="col-xl-12 col-sm-6 mb-3">
            <div class="card text-dark o-hidden h-100" style="box-shadow: 2px 2px 10px grey; background-color:#fdcb6e">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-exclamation-triangle"></i>
                </div>
                <div class="mr-5">
                  <h4 style="margin-left:40px"><strong>Event Hari Ini </strong></h4>
                  <hr/>
                    <h5 style="margin-left:40px">
                      <i class="fas fa-exclamation" style="margin-right:10px"></i>
                      <?php 
                        if (empty($eventTodayData)) {
                          echo 'Tidak Ada Event';
                        }
                        else{
                          foreach ($eventTodayData as $data) {
                              echo $data['judul'];
                          }
                        }
                      ?>
                    </h5>
                </div>
              </div>
              <a class="card-footer text-dark clearfix small z-1" href="<?php echo base_url('assets/admin/')?>#">
                <span class="float-left"><strong>View Details</strong></span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>

          <!-- Icon Cards Jadwal Terdekat-->
          <div class="col-xl-8 col-sm-6 mb-3">
            <div class="card text-dark bg-light o-hidden h-100" style="box-shadow: 2px 2px 10px grey;">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="far fa-calendar"></i>
                </div>
                <div class="mr-5">
                  <h4><strong>Event Terdekat</strong></h4>
                  <hr/>
                  <table class="table table-borderless">
                    <thead>
                      <tr>
                        <th>No</th>
                        <th>Jadwal</th>
                        <th>Tanggal</th>
                      </tr>
                    </thead>
                    <?php $no = 1;?>
                    <?php foreach ($eventData as $data) { ?>
                    <tbody>
                      <tr>
                        <th><?php echo $no++; ?></th>
                        <td><?php echo $data['judul']?></td>
                        <td><?php echo date_format(date_create($data['tanggal']),"d F Y");?></td>
                      </tr>
                    </tbody>
                    <?php }?>
                  </table>
                </div>
              </div>
              <a class="card-footer text-dark clearfix small z-1" href="<?php echo base_url('assets/admin/')?>#">
                <span class="float-left"><strong>View Details</strong></span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>
          
          <!-- Icon Cards Tausiah-->
          <div class="col-xl-4 col-sm-6 mb-3">
            <div class="card text-dark bg-light o-hidden h-100" style="box-shadow: 2px 2px 10px grey;">
              <div class="card-body">
                <div class="card-body-icon">
                  <i class="fas fa-book-reader"></i>
                </div>
                <div class="mr-5">
                  <h4><strong>Tausiah</strong></h4>
                  <hr/>
                    <h6>Bidayatul Hidayah : <?php echo $tausiahBidayatulHidayah?></h6>
                    <h6>Aqidatul Awam : <?php echo $tausiahAqidatulAwam?></h6>
                    <h6>Nashohih Diniyah : <?php echo $tausiahNashohihDiniyah?></h6>
                    <h6>Ihya Ulumuddin : <?php echo $tausiahIhyaUlumuddin?></h6>
                    <h6>Riyadhus Shalihin : <?php echo $tausiahRiyadhusShalihin?></h6>
                    <h6>Syarah Ratibul Haddad : <?php echo $tausiahSyarahRatibulHaddad?></h6>
                    <h6>Syarah Hadits Jibril : <?php echo $tausiahSyarahHaditsJibril?></h6>
                </div>
              </div>
              <a class="card-footer text-dark clearfix small z-1" href="<?php echo base_url('assets/admin/')?>#">
                <span class="float-left"><strong>View Details</strong></span>
                <span class="float-right">
                  <i class="fas fa-angle-right"></i>
                </span>
              </a>
            </div>
          </div>

        </div>

        <script>
          $(document).ready(function () {
            $("#dashboard").addClass("active")
            $("#about").removeClass("active")
            $("#tausiah").removeClass("active")
            $("#jadwal").removeClass("active")
            $("#media").removeClass("active")
            $("#event").removeClass("active")
            $("#dokumentasi").removeClass("active")
          });
        </script>            

<?php
    $this->load->view('Admin/Layout/Footer');
?>