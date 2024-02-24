<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>
			Variable Exercises
		</title>
		
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		      rel="stylesheet" 
		      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		      crossorigin="anonymous">
	</head>
	
	<body>
	
		<!--- step 1 - Create 3 variables using cfset--->
		<!--- step 2 - Use cfoutput --->
		<!---Step 3 - experiment with typeless variables--->
		<!---Step 4 - Copy /paste the above 3 lines below this comment--->
		<!---Step 5 - Experiment with the CGI scope--->
		<!---Step 6 - The server scope --->
		<cfset var_firstName = "Reuel">
		<cfset var_lastName = "Sicat">
		<cfset var_age = 36>
	
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Variable Exercises
						</h4>
						<div>
							<ul>
								<li>
									step 1 - Create 3 variables using cfset
								</li>
								<li>
									step 2 - Use cfoutput
								</li>
								<li>
									Step 3 - experiment with typeless variables
								</li>
								<li>
									Step 4 - Copy /paste the above 3 lines below this comment
								</li>
								<li>
									Step 5 - Experiment with the CGI scope
								</li>
								<li>
									Step 6 - The server scope 
								</li>
							</ul>
						</div>
						<p>
							My name is 
							<b>
								#var_firstName# 
								#var_lastName# 
							</b>
							and I am 
							<b>
								#var_age# 
							</b>
							years old
						</p>
					</div>
					<div class="col-12 border p-3 my-1">
						<cfdump var="#var_firstName#" label="Variable - FIRSTNAME">
					</div>
					<div class="col-12 border p-3 my-1">
						<cfdump var="#cgi#" label="Scope - CGI">
					</div>
					<div class="col-12 border p-3 my-1">
						<cfdump var="#server#" label="Scope - SERVER" output="console" >
					</div>
					<div class="col-12 border p-3 my-1">
						<!---<cfdump var="#application#" label="Scope - APPLICATION">--->
					</div>
					<div class="col-12 border p-3 my-1">
						<!---<cfdump var="#session#" label="Scope - SESSION">--->
					</div>
				</div>
			</div>
		</cfoutput>
	
		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		        crossorigin="anonymous">

		</script>
	</body>
</html>