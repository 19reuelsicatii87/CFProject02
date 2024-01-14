<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>
			HTML FORM
		</title>
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		      rel="stylesheet" 
		      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		      crossorigin="anonymous">
	</head>
	
	<body>
	
		<!---Boostrap 5--->
		<div class="container">
			<div class="row mt-5">
				<div class="col-lg-6">
					<h1>
						GET Method
					</h1>
					<form id="frm_getFirstForm" name="frm_getFirstForm" method="get" action="actionForm.cfm">
						<div class="mb-0">
							<label for="fld_firstName" class="form-label">
								First Name
							</label>
							<input type="text" class="form-control" id="fld_firstName" name="fld_firstName"
							       placeholder="Reuel" required="true" message="FirstName provided is invalid!">
						</div>
						<div class="mb-0">
							<label for="fld_lastName" class="form-label">
								Last Name
							</label>
							<input type="text" class="form-control" id="fld_lastName" name="fld_lastName"
							       placeholder="Sicat" required="true" message="LastName provided is invalid!">
						</div>
						<div class="mb-0">
							<label for="fld_age" class="form-label">
								Age
							</label>
							<input type="text" class="form-control" id="fld_age" name="fld_age"
							       placeholder="36" required="true" message="Age provided is invalid!">
						</div>
						<div class="mt-3">
							<button type="submit" class="btn btn-primary w-100" name="fld_submitForm" id="fld_submitForm">
								Submit
							</button>
						</div>
					</form>
				</div>
				
				<div class="col-lg-6">
					<h1>
						POST Method
					</h1>
					<form id="frm_postFirstForm" name="frm_postFirstForm" method="post" action="actionForm.cfm">
						<div class="mb-0">
							<label for="fld_firstName" class="form-label">
								First Name
							</label>
							<input type="text" class="form-control" id="fld_firstName" name="fld_firstName"
							       placeholder="Reuel" required="true" message="FirstName provided is invalid!">
						</div>
						<div class="mb-0">
							<label for="fld_lastName" class="form-label">
								Last Name
							</label>
							<input type="text" class="form-control" id="fld_lastName" name="fld_lastName"
							       placeholder="Sicat" required="true" message="LastName provided is invalid!">
						</div>
						<div class="mb-0">
							<label for="fld_age" class="form-label">
								Age
							</label>
							<input type="text" class="form-control" id="fld_age" name="fld_age"
							       placeholder="36" required="true" message="Age provided is invalid!">
						</div>
						<div class="mt-3">
							<button type="submit" class="btn btn-primary w-100" name="fld_submitForm" id="fld_submitForm">
								Submit
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		        crossorigin="anonymous">

		</script>
	</body>
</html>