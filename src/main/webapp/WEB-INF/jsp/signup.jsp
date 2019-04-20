
<html>
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
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/fonts/stylesheet.css" rel="stylesheet">
<link href="resources/css/slick.css" rel="stylesheet">
<link href="resources/css/slick-theme.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/mobile.css" rel="stylesheet">

<style>



.container {
	margin-top: 30px;
}

#input-select, #input-number {
	padding: 7px;
	margin: 15px 5px 5px;
	width: 70px;
}

.noUi-horizontal {
	height: 10px;
	margin-bottom: 30px;
}

.noUi-horizontal .noUi-handle {
	width: 30px;
	height: 30px;
	left: -17px;
	top: -10px;
	border-radius: 50%;
	outline: 0;
}
</style>

</head>





<body >
<header class="landing_header header_fixed_menu">
		<nav class="navbar navbar-expand-md  align-items-center">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsibleNavbar">
				<span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
			</button>
			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav navbar-nav ml-auto main-menu">
					<li class="nav-item"><a class="nav-link" href="login">Login</a>
					</li>
					
					
				
	
	
					
					
					
				</ul>
			</div>
			</div>
			</header>
	<main class="main-container bg_gray">
	<section class="inner_section common_section">
		<div class="container">
			<div class="max-WT-600 center-box">
				<div class="global_box">
					<div class="head_box2 head_box2_border">
						<h4>Sign-Up</h4>

					</div>
					<div class="row justify-content-center">
						<div class="col-12">

							<div class="form-box center-box max-WT-500">
								<form class="common-form" id="sign-form" action="savedata"
									method="POST" enctype="multipart/form-data">

									<!-- <div class="form-group">
											   <div class="profile-pic">
											    <img src="images/images.png">
										      </div>
											  </div> -->
									<div class="form-group">
										<label>Firstname</label> <input type="text" name="firstName"
											class="form-control" required value="" />
									</div>
									<div class="form-group mb20">
										<label>Lastname</label> <input type="text" name="lastName"
											class="form-control" value="" required="true" />
									</div>

									<div class="form-group mb20">
										<label>Email</label> <input type="email" name="email"
											class="form-control" value="" required="true" />
									</div>
									<div class="form-group mb20">
										<label>Password</label> <input type="password" name="password"
											class="form-control" value="" required="true" /></div>

										<div class="form-group mb20">
											<label>Confirmpassword</label> <input type="password"
												name="confirmPassword" class="form-control" value=""
												required="true" />
										</div>




										
										<div class="form-group">
											<label d-block>Gender</label> <label class="d-block pdlft20"
												for="radio1"> <input type="radio"
												class="form-check-input" id="radio1" name="gender"
												value="Male" checked>Male
											</label> <label class=" -block pdlft20" for="radio1"> <input
												type="radio" class="form-check-input" id="radio1"
												name="gender" value="Female">Female
											</label> <label class="d-block pdlft20" for="radio1"> <input
												type="radio" class="form-check-input" id="radio1"
												name="gender" value="Others">Others
											</label>
										</div>

                                                   <div class="form-group">
										<label>Address</label> <input type="text" name="address"
											class="form-control" required value="" />
                                                  </div>
                                               <div class="form-group">
										<label>Salary</label> <input type="text" name="salary"
											class="form-control" required value="" /></div>
                                                  
                                         <div class="form-group">
										<label>Role</label> <input type="text" name="role"
											class="form-control" required value="" /></div>


										

										<div class="image section">
											<label>Upload your image</label>
											<div class="imageinside">
												<span class="pencil"> <i id="img-upload-icon"
													class="fas fa-pencil-alt"></i>
												</span> <input name="multipartimage" id="img-upload-input"
													type="file" hidden="true">
											</div></div>
											


											<div class="text-center">
												<input type="submit" class="btn btn-primary" >
				
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
	

	

	<div class="modal bs-example-modal-sm" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<h4>
						Logout <i class="fa fa-lock"></i>
					</h4>
				</div>
				<div class="modal-body">Are you sure you want to log-off?</div>
				<div class="modal-footer text-center">
					<div class="btn-block">
						<a href="javascript:;" class="btn btn-header active">Yes</a> <a
							href="javascript:;" class="btn btn-header active">No</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.0/jquery.validate.min.js"></script>
	<script type="text/javascript" src="resources/js/sign-up.js"></script>







	<script src="resources/js/jquery-3.3.1.min.js">
		
	</script>
	<script>
	
	$("#img-upload-icon").click(function() {
		$("#img-upload-input").click();
	});
	
	</script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/marquee.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/common.js"></script>

</body>
</html>