</div>
        <!-- Sticky Footer -->
        <footer class="sticky-footer" style="box-shadow: 2px 2px 10px black;">
            <div class="container my-auto">
            <div class="copyright text-center my-auto">
                <span>Copyright © MJIB 2019</span>
            </div>
            </div>
        </footer>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Anda Yakin Ingin Keluar ??</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="<?php echo site_url('LoginController/Logout')?>">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <script>
    $(document).ready(function() {
    $('#dataTable').dataTable({
        "bLengthChange": false,
        "bFilter": true,
        "bInfo": false,
        "bAutoWidth": false });
    });
  </script>
  <!-- PLUGIN -->
  <script src="<?php echo base_url('assets/admin/')?>vendor/jquery/jquery.min.js"></script>
  <script src="<?php echo base_url('assets/admin/')?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?php echo base_url('assets/admin/')?>vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="<?php echo base_url('assets/admin/')?>vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url('assets/admin/')?>vendor/datatables/dataTables.bootstrap4.min.js"></script>
  <script src="<?php echo base_url('assets/admin/')?>js/sb-admin.min.js"></script>
  <script src="<?php echo base_url('assets/admin/')?>js/demo/datatables-demo.js"></script>
</body>

</html>

