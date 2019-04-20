<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0,width=device-width,user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style"
	content="black-translucent">
<meta name="description" content="">
<meta name="author" content="">
<title>Mobiloitte</title>
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/fonts/stylesheet.css" rel="stylesheet">
<link href="/resources/css/slick.css" rel="stylesheet">
<link href="/resources/css/slick-theme.css" rel="stylesheet">
<link href="/resources/css/style.css" rel="stylesheet">
<link href="/resources/css/mobile.css" rel="stylesheet">
</head>
<body class="logged">
	<header class="landing_header header_fixed_menu">
		<nav class="navbar navbar-expand-md  align-items-center">
			<a class="navbar-brand logo" href="/"> <img class="logo_large"
				src="/resources/images/logo.png" height="75px" width="75px" alt="Logo" /> <!--  <img class="logo_small" src="images/logo_small.png" alt="Logo"/> -->
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav navbar-nav ml-auto main-menu">
					<li class="nav-item"><a class="nav-link" href="login">Login</a></li>
					<li class="nav-item"><a class="nav-link" href="signup">Signup</a></li>
				</ul>
			</div>

		</nav>
	</header>
	<!-- Header End -->
	<main class="main-container bg_gray">
	<section class="inner_section common_section">
		<div class="container">
			<div class="max-WT-600 center-box">
				<div class="global_box">
					<div class="head_box2 head_box2_border">
						<h4>Forget Password</h4>

					</div>
					<div class="row justify-content-center">
						<div class="col-12">

							<div class="form-box center-box max-WT-500">
								<h5 style="color: green">${delete}</h5>
								<h3 style="color: green">${success}</h3>
								<h3 style="color: red">${invalid}</h3>
								<form class="common-form" id="signup" method="post" action="sendmail">

									<!-- <div class="form-group">
											   <div class="profile-pic">
											    <img src="images/profile-pic.jpg">
										      </div>
											  </div> -->
									<div class="form-group mb20">
									<h5 style="text-align: center">Please enter your email we will send your password on your email</h5>
										<br> <input type="email" name="email"
											class="form-control" placeholder="Enter your Email"
											maxlength="200" />
									</div>

									<div class="text-center">
										<a href="sendmail"><button type="submit"
												class="btn mt20 btnproperty">Submit</button></a>
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	</main>
	<!-- main End -->
	<footer class="footer-inner">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-8">
					<div class="footer-content">
						<div class="footer-text">
							<p class="copyright">Mobiloitte portal © 2019 - All Rights
								Reserved.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<ul class="socialList">
						<li><a href="https://web.telegram.org"><i class="fas fa-paper-plane"></i></a></li>
						<li><a href="https://www.facebook.com"><i class="fab fa-facebook-f"></i></a></li>
						<li><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
						<li><a href="https://www.reddit.com" class="reddit"><i
								class="fab fa-reddit-alien"></i></a></li>
						<li><a href="https://github.com" class="Octocat"><i
								class="fab fa-github-alt"></i></a></li>
						<li><a href="https://plus.google.com/discover"><i class="fab fa-google-plus-g"></i></a></li>
						<li><a href="https://www.instagram.com"><i class="fab fa-instagram"></i></a></li>
						<li><a href="https://www.youtube.com"><i class="fab fa-youtube"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	


	<script src="/resources/js/jquery-3.3.1.min.js"></script>
	<script src="/resources/js/popper.min.js"></script>
	<script src="/resources/js/bootstrap.min.js"></script>
	<script src="/resources/js/marquee.js"></script>
	<script src="/resources/js/slick.min.js"></script>
	<script src="/resources/js/common.js"></script>
	<script src="/resources/js/validation.js"></script>

</body>

<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
<script type="text/javascript" src="/resources/js/validation.js"></script>
</html>