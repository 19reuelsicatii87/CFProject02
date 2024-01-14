<!DOCTYPE html>
<html>
	<head>
		<title>
			ACTION FORM
		</title>
		
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		      rel="stylesheet" 
		      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		      crossorigin="anonymous">
	</head>
	<body>
	
		<div class="container mt-5">
		
			<cfif CGI.REQUEST_METHOD EQ "GET">
				<!-- This is a GET request -->
				<div class="row">
				
					<div class="row mt-5">
						<div class="col-lg-12 d-flex justify-content-center mt-5">
							<div class="card" style="width: 25rem;">
								<img src="https://images.pexels.com/photos/3617500/pexels-photo-3617500.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" 
								     class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">
										This is a GET request!
									</h5>
									<cfoutput>
										<p class="card-text">
											My name is 
											<b>
												#url.fld_firstName# 
												#url.fld_lastName#
											</b>
											and I am 
											<b>
												#url.fld_age# 
											</b>
											years old
										</p>
									</cfoutput>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
						</div>
					</div>
					
					<p class="my-2"/>
					
					<div class="row">
						<cfdump var="#CGI#" label="CGI">				
					</div>
					
					<div class="row">
						<p>
							URL DUMP
						</p>						
						<cfdump var="#url#" label="URL">
					</div>
					
					<p class="my-5"/>
				</div>
				
			<cfelseif CGI.REQUEST_METHOD EQ "POST">
				<!-- This is a POST request -->
				<div class="row">
				
					<div class="row mt-5">
						<div class="col-lg-12 d-flex justify-content-center mt-5">
							<div class="card" style="width: 25rem;">
								<img src="https://images.pexels.com/photos/333850/pexels-photo-333850.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" 
								     class="card-img-top" alt="...">
								<div class="card-body">
									<h5 class="card-title">
										This is a POST request
									</h5>
									<cfoutput>
										<p class="card-text">
											My name is 
											<b>
												#form.fld_firstName# 
												#form.fld_lastName#
											</b>
											and I am 
											<b>
												#form.fld_age# 
											</b>
											years old
										</p>
									</cfoutput>
									<a href="#" class="btn btn-primary">Go somewhere</a>
								</div>
							</div>
						</div>
					</div>
					
					<p class="my-2"/>
					
					<div class="row">
						<cfdump var="#CGI#" label="CGI">
					</div>
					
					<p class="my-5"/>
				</div>
			<cfelse>
				<!-- This is neither GET nor POST -->
				<p>
					This is neither a GET nor a POST request.
				</p>
			</cfif>
		</div>
		
		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		        crossorigin="anonymous">

		</script>
	</body>
</html>