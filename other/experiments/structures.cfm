<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>
			Structure Exercises
		</title>
		
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		      rel="stylesheet" 
		      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		      crossorigin="anonymous">
	</head>
	
	<body>
		<!---Step 1 - Create a structure using the structNew() function--->
		<cfset st_User = structNew()>
		<cfset st_User.firstName = "Reuel">
		<cfset st_User.lastName = "Sicat">
		<cfset st_User.age = 36>
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Dumping the explicit Structure
						</h4>
						<p>
							My name is 
							<b>
								#st_User.firstName# 
								#st_User.lastName# 
							</b>
							and I am 
							<b>
								#st_User.age# 
							</b>
							years old
						</p>
						<cfdump var="#st_User#" label="Structure - Explicit">
					</div>
				</div>
			</div>
		</cfoutput>
	
		<!---Step 2 - Create the same structure using implicit notation--->
		<cfset st_UserImplicit = {firstName="Reuel", lastName="Sicat", age=36}>
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Dumping the implicit structure
						</h4>
						<p>
							My name is 
							<b>
								#st_UserImplicit.firstName# 
								#st_UserImplicit.lastName# 
							</b>
							and I am 
							<b>
								#st_UserImplicit.age# 
							</b>
							years old
						</p>
						<cfdump var="#st_UserImplicit#" label="Structure - Implicit">
					</div>
				</div>
			</div>
		</cfoutput>
	
		<!---Step 3 - use structDelete() --->	
		<cfset structDelete(st_User, "age")>
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Dumping stUser after the deletion of the 'age' key'
						</h4>
						<p>
							My name is 
							<b>
								#st_User.firstName# 
								#st_User.lastName# 
							</b>
							
							<cfif structKeyExists(st_User, "age")>
								and I am 
								<b>
									#st_User.age# 
								</b>
								years old
							<cfelse>
								and I am ageless
							</cfif>
						</p>
						<cfdump var="#st_User#" label="Structure - Explicit">
					</div>
				</div>
			</div>
		</cfoutput>
	
		<!---Step 4 - use structClear() --->
		
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Dumping stUser after using structClear()
						</h4>
						<p>
							Before CLEARING
						</p>
						<cfdump var="#st_User#" label="Structure - Explicit">
						<br>						
						
						<!------------------------------------------------>
						
						<cfset structClear(st_User)>
						<p>
							After CLEARING
						</p>
						<cfdump var="#st_User#" label="Structure - Explicit">
					</div>
				</div>
			</div>
		</cfoutput>
		
	
		
		<!---Step 5 - use structCount()--->
		<cfset structCount = structCount(st_UserImplicit)>
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							stUserImplicit holds XXX elements
						</h4>
						<p>
							My name is 
							<b>
								#st_UserImplicit.firstName# 
								#st_UserImplicit.lastName# 
							</b>
							and I am 
							<b>
								#st_UserImplicit.age# 
							</b>
							years old
						</p>
						<cfdump var="#st_UserImplicit#" label="st_UserImplicit 'key' Count: #structCount#">
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