
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
<title>Mobiloitte</title>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/fonts/stylesheet.css" rel="stylesheet">
<link href="resources/css/slick.css" rel="stylesheet">
<link href="resources/css/slick-theme.css" rel="stylesheet">
<link href="resources/css/style.css" rel="stylesheet">
<link href="resources/css/mobile.css" rel="stylesheet">
</head>




</head>
<body>
<body class="logged">

	<!-- Header End -->
	<main class="main-container bg_gray">
	<section class="inner_section common_section">
		<div class="container">
			<div class="max-WT-600 center-box">
				<div class="global_box">
					<div class="head_box2 head_box2_border">
						<h4>Edit-profile</h4>

					</div>
					<div class="row justify-content-center">
						<div class="col-12">

							<div class="form-box center-box max-WT-500">
								<form class="common-form" id="signup" action="Editprofile"
									method="POST" enctype="multipart/form-data">

<!-- 									<div class="form-group">  -->
<!-- 											   <div class="profile-pic">  -->
<!-- 									    <img src="images/images.png">  -->
<!-- 										      </div>  -->
<!-- 											  </div>  -->
											  <div class="form-group">
										<label>Emp Id</label> <input type="text" name="empId"
											class="form-control" value="${EmployeeDetails.empId}" readonly required value="" />
									</div>
											  
									<div class="form-group">
										<label>Firstname</label> <input type="text" name="firstName"
											class="form-control" value="${EmployeeDetails.firstName} "required value="" />
									</div>
									<div class="form-group mb20">
										<label>Lastname</label> <input type="text" name="lastName"
											class="form-control" value="${EmployeeDetails.lastName}" required="true" />
									</div>


										<div class="form-group mb20">
											<label>Email</label> <input type="text"
												name="email" class="form-control" value="${EmployeeDetails.email}"
												required="true" />
										</div>
									<div class="form-group mb20">
										<label>Password</label> <input type="password" name="password"
											class="form-control" value="${EmployeeDetails.password}" required="true" /></div>

										<div class="form-group mb20">
											<label>Phone No</label> <input type="text"
												name="phoneNumber" class="form-control" value="${EmployeeDetails.phoneNumber}"
												required="true" />
										</div>




										
                                   



<%--                                                  <input type="hidden" name="id" value="${empId}"> --%>

										<div class="text-center">
											<input type="submit" class="btn btn-primary">
										</div>
								</form>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div>
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
	<script type="text/javascript" src="resources/js/signup.js"></script>

	<script>
	
	
	
	
	$("#img-upload-icon").click(function(){
		$("#img-upload-input").click();
	});
	
	
	</script>

	<script>
	function ShowMessage(){
		alert("Successfull Update")
		
	
	}
	</script>












	<script src="resources/js/jquery-3.3.1.min.js">
	</script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/marquee.js"></script>
	<script src="resources/js/slick.min.js"></script>
	<script src="resources/js/common.js"></script>

</body>
</html>