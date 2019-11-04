<?php $basedir = realpath(__DIR__); include($basedir . "..\Layout\Header.php");?>

	<!-- login -->
	<form action="" method="">
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
								<div class="content">

									<div class="form-group">
										<input id="login-username" type="text" name="username" required
											data-msg="Please enter your username" class="input-material"
											placeholder="Username">
										<label for="login-username" class="label-material"></label>
									</div>
									<div class="form-group">
										<input id="login-password" type="password" name="password" required
											data-msg="Please enter your password" class="input-material"
											placeholder="Password">
										<label for="login-password" class="label-material"></label><br><br>
										<button type="submit" class="btn btn-primary">Login</button>
										<!-- This should be submit button but I replaced it with <a> for demo purposes-->
										<a href="#" class="forgot-pass">Forgot Password?</a><br><small>Do not have an
											account? </small><a href="admin/register.html" class="signup">Signup</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
	</form>

	<!--end login-->

<?php $basedir = realpath(__DIR__); include($basedir . "..\Layout\Footer.php");?>