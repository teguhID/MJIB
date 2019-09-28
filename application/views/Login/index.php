<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Bootstrap Material Admin by Bootstrapious.com</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="robots" content="all,follow">
  <!-- Bootstrap CSS-->
  <link rel="stylesheet" href="<?php echo base_url('assets/css/bootstrap.min.css')?>">
  <!-- Font Awesome CSS-->
  <link rel="stylesheet" href="<?php echo base_url('assets/css/font-awesome.min.css')?>">
  <!-- Fontastic Custom icon font-->
  <link rel="stylesheet" href="<?php echo base_url('assets/css/fontastic.css')?>">
  <!-- Google fonts - Poppins -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
  <!-- theme stylesheet-->
  <link rel="stylesheet" href="<?php echo base_url('assets/css/style.default.css')?>" id="theme-stylesheet">
  <!-- Custom stylesheet - for your changes-->
  <link rel="stylesheet" href="<?php echo base_url('assets/css/custom.css')?>">
  <!-- Favicon-->
  <link rel="shortcut icon" href="<?php echo base_url('assets/img/admin/favicon.ico')?>">
  <!-- Tweaks for older IEs-->
  <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<style>
.login-page::before {
  content: '';
  width: 100%;
  height: 100%;
  display: block;
  z-index: -1;
  background: url("<?php echo base_url('assets/img/bg.jpg')?>");
  background-size: cover;
  -webkit-filter: blur(10px);
  filter: blur(10px);
  z-index: 1;
  position: absolute;
  top: 0;
  right: 0;
}
</style>
<body>
<form action="<?php echo site_url('LoginController/Login')?>" method="post">
  <div class="page login-page">
    <div class="container d-flex align-items-center">
      <div class="form-holder has-shadow">
        <div class="row">
          <!-- Logo & Information Panel-->
          <div class="col-lg-6">
            <div class="info d-flex align-items-center">
              <div class="content">
                <div class="logo">
                  <h1>Dashboard</h1>
                </div>

                <p>Majelis Jalsatul Itsnain Ba'alawy</p>
              </div>
            </div>
          </div>

          <!-- Form Panel    -->
          <div class="col-lg-6 bg-white">
            <div class="form d-flex align-items-center">
              <div class="content">
             
                  <div class="form-group">
                    <input id="login-username" type="text" name="username" required
                      data-msg="Please enter your username" class="input-material" placeholder="Username">
                    <label for="login-username" class="label-material"></label>
                  </div>
                  <div class="form-group">
                    <input id="login-password" type="password" name="password" required
                      data-msg="Please enter your password" class="input-material" placeholder="Username">
                    <label for="login-password" class="label-material"></label><br><br>
                    <button type="submit" class="btn btn-primary">Login</button>
                  <!-- This should be submit button but I replaced it with <a> for demo purposes-->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </form>
    <div class="copyrights text-center">
      <p>Design by <a href="https://bootstrapious.com/p/admin-template" class="external">FeiAdnan</a>
        <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
      </p>
    </div>
  </div>
  <!-- JavaScript files-->
  <script src="<?php echo base_url('assets/js/jquery.min.js')?>"></script>
  <script src="<?php echo base_url('assets/js/popper.min.js')?>"> </script>
  <script src="<?php echo base_url('assets/js/bootstrap.min.js')?>"></script>
  <script src="<?php echo base_url('assets/js/jquery.cookie.js')?>"> </script>
  <script src="<?php echo base_url('assets/js/jquery.validate.min.js')?>"></script>
  <!-- Main File-->
  <script src="<?php echo base_url('assets/js/front.js')?>"></script>
</body>

</html>