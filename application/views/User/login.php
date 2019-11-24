<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>Login Admin</title>
	<link rel="icon" href="images/logo/baalawy.png" type="image/png">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Home Loan Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>

	<!-- Bootstrap Core CSS -->
	<link href="<?php echo base_url('assets/user/')?>css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="<?php echo base_url('assets/user/')?>css/style.css" rel='stylesheet' type='text/css' />
	<link href="<?php echo base_url('assets/user/')?>css/custom.css" rel='stylesheet' type='text/css' />
	<!-- font-awesome icons -->
	<link href="<?php echo base_url('assets/user/')?>css/fontawesome-all.min.css" rel="stylesheet">
	<!-- //Custom Theme files -->
	<!-- online fonts -->
	<!-- titles -->
	<link href="//fonts.googleapis.com/css?family=Raleway:300,400,500,600,700,800,900" rel="stylesheet">
	<!-- body -->
	<link href="//fonts.googleapis.com/css?family=Poppins:400,500,600,700,800" rel="stylesheet">
</head>

<body>

	<!-- header -->
	<header>
		<div class="top">
			<div class="container">
				<div class="t-op row">
					<div class="col-sm-6 top-middle">
						<ul>
							<li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
							<li><a href="#"><i class="fab fa-twitter"></i></a></li>
							<li><a href="#"><i class="fab fa-google-plus-g"></i></a></li>
							<li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
						</ul>
					</div>
					<div class="col-sm-6 top-left">
						<ul>
							<li><i class="fas fa-phone"></i> +021 365 777</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<nav class="navbar navbar-expand-lg navbar-light">
				<h1>
					<a class="navbar-brand text-capitalize" href="index.html">
						<img src="<?php echo base_url('assets/user/')?>images/logo/baalawy-brand.png" alt="">
					</a>
				</h1>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav text-center  ml-lg-auto">
						<li class="nav-item active  mr-3">
							<a class="nav-link" href="index.html">Home
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item dropdown mr-3">
							<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
								data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								About
							</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="typography.html">MJIB</a>
								<a class="dropdown-item" href="<?php echo site_url('')?>/User/Guru">Guru</a>
							</div>
						</li>
						<li class="nav-item mr-3">
							<a class="nav-link" href="<?php echo site_url('')?>/User/Tausiah">Tausiah</a>
						</li>
						<li class="nav-item mr-3">
							<a class="nav-link" href="<?php echo site_url('')?>/User/Jadwal">Jadwal</a>
						</li>
						<li class="nav-item mr-3">
							<a class="nav-link" href="contact.html">Media</a>
						</li>
						<li class="nav-item mr-3">
							<a class="nav-link" href="<?php echo site_url('')?>/User/Event">Event</a>
						</li>
						<li class="nav-item mr-3">
							<a class="nav-link" href="<?php echo site_url('')?>/User/Login">Login</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>


	<!-- login -->

		<div class="page login-page">
			<div class="container d-flex align-items-center">
				<div class="form-holder has-shadow">
					<div class="row">
						<!-- Logo & Information Panel-->
						<div class="col-lg-6">
							<div class="info d-flex align-items-center">
								<div class="content">
									<div class="logo">
										<img src="<?php echo base_url('assets/user/')?>images/logo/baalawy-brand2.png" alt="">
									</div>

									<p class="txttitle">&nbsp;&nbsp; Majelis Jalsatul Itsnain Ba'alawy</p>
								</div>
							</div>
						</div>

						<!-- Form Panel    -->
						<div class="col-lg-6 bg-white">
							<div class="form d-flex align-items-center">
								<form action="<?php echo site_url('LoginController/Login')?>" method="POST">
									<div class="form-group">
										<input id="login-username" type="text" name="username" required data-msg="Please enter your username" class="input-material" placeholder="Username" style="padding:10px">
									</div>
									<div class="form-group">
										<input id="login-password" type="password" name="password" required data-msg="Please enter your password" class="input-material" placeholder="Password" style="padding:10px">
									</div>
									<div class="row justify-content-center">
										<button type="submit" class="btn btn-primary col-4" name="login">Login</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>


	<!--end login-->

	<!-- js-->
	<script src="<?php echo base_url('assets/user/')?>js/jquery-2.2.3.min.js"></script>
	<!-- js-->
	<!-- Bootstrap Core JavaScript -->
	<script src="<?php echo base_url('assets/user/')?>js/bootstrap.js ">
	</script>
	<!-- //Bootstrap Core JavaScript -->
</body>

</html>