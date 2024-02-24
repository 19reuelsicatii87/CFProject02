<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>
			Array Exercises
		</title>
		
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		      rel="stylesheet" 
		      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		      crossorigin="anonymous">
	</head>
	
	<body>
		<!---Step 1 - Create an array using explicit notation--->
		<!--- arrayNew parameter signifies array dimension  --->
		<cfset ar_Color = arrayNew(1)>
		<cfset ar_Color[1] = "Red">
		<cfset ar_Color[2] = "Blue">
		<cfset ar_Color[3] = "Green">
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Create and Dump the Explicit Array
						</h4>
						<p class="mb-0">
							This Array have the following values:
						</p>
						<ul>
						
							<li>
								#ar_Color[1]#
							</li>
							<li>
								#ar_Color[2]#
							</li>
							<li>
								#ar_Color[3]#
							</li>
						</ul>
						<cfdump var="#ar_Color#" label="Array - Explicit">
					</div>
				</div>
			</div>
		</cfoutput>
	
		<!---Step 2 - Create an array using the implicit array notation--->
		<cfset ar_ColorImp = ["Red", "Blue", "Green"]>    
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Create and Dump the Implicit Array
						</h4>
						<p class="mb-0">
							This Array have the following values:
						</p>
						<ul>						
							<li>
								#ar_ColorImp[1]#
							</li>
							<li>
								#ar_ColorImp[2]#
							</li>
							<li>
								#ar_ColorImp[3]#
							</li>
						</ul>
						<cfdump var="#ar_Color#" label="Array - Implicit">
					</div>
				</div>
			</div>
		</cfoutput>
	
		<!---Step 3 - use arrayLen()--->
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							The aColors array contains XXX Elements
						</h4>
						<p class="mb-0">
							<b>
								ar_Color
							</b>
							Array have count Elements: 
							#arrayLen(ar_Color)#
						</p>
						<p class="mb-0">
							This Array have the following values:
						</p>
						<ul>
						
							<li>
								#ar_Color[1]#
							</li>
							<li>
								#ar_Color[2]#
							</li>
							<li>
								#ar_Color[3]#
							</li>
						</ul>
						<cfdump var="#ar_Color#" label="Array - Emplicit">
					</div>
				</div>
			</div>
		</cfoutput>
	
		<!---Step 4 - use <cfloop> to loop over the array--->
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							use CFLOOP to loop over the array
						</h4>
						<p class="mb-0">
							CFLOOP by Index --- This Array have the following values:
						</p>
						<ul>
							<!--- By index --->
							<cfloop index="i" from="1" to="#arrayLen(ar_Color)#">
								<li>
									#ar_Color[i]#
								</li>								
							</cfloop>
						</ul>
						<br>
						<p class="mb-0">
							CFLOOP by Array --- This Array have the following values:
						</p>
						<ul>
							<!--- By array  --->
							<cfloop index="currentIndex" item="currentItem" array="#ar_Color#">
								<li>
									currentIndex: #currentIndex# --- currentItem: #currentItem#
								</li>								
							</cfloop>
						</ul>
						<cfdump var="#ar_Color#" label="Array - Emplicit">
					</div>
				</div>
			</div>
		</cfoutput>
	
		<!--- Step 5 - Use arrayAppend() and arrayPrepend() --->
		<cfset arrayPrepend(ar_Color,"Brown")>
		<cfset arrayAppend(ar_Color,"Orange")>
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Use arrayAppend() and arrayPrepend()
						</h4>
						<p class="mb-0">
							CFLOOP by Index --- This Array have the following values:
						</p>
						<ul>
							<!--- By index --->
							<cfloop index="i" from="1" to="#arrayLen(ar_Color)#">
								<li>
									#ar_Color[i]#
								</li>								
							</cfloop>
						</ul>
						<br>
						<p class="mb-0">
							CFLOOP by Array --- This Array have the following values:
						</p>
						<ul>
							<!--- By array  --->
							<cfloop index="currentIndex" item="currentItem" array="#ar_Color#">
								<li>
									currentIndex: #currentIndex# --- currentItem: #currentItem#
								</li>								
							</cfloop>
						</ul>
						<cfdump var="#ar_Color#" label="Array - Emplicit">
					</div>
				</div>
			</div>
		</cfoutput>
		
		<!---Step 6 - Use arrayDeleteAt() --->
		<cfset arrayDeleteAt(ar_Color,1)>
		<cfoutput>
			<div class="container ">
				<div class="row my-5">
					<div class="col-12 border p-3 my-1">
						<h4>
							Use arrayDeleteAt()
						</h4>
						<p class="mb-0">
							CFLOOP by Index --- This Array have the following values:
						</p>
						<ul>
							<!--- By index --->
							<cfloop index="i" from="1" to="#arrayLen(ar_Color)#">
								<li>
									#ar_Color[i]#
								</li>								
							</cfloop>
						</ul>
						<br>
						<p class="mb-0">
							CFLOOP by Array --- This Array have the following values:
						</p>
						<ul>
							<!--- By array  --->
							<cfloop index="currentIndex" item="currentItem" array="#ar_Color#">
								<li>
									currentIndex: #currentIndex# --- currentItem: #currentItem#
								</li>								
							</cfloop>
						</ul>
						<cfdump var="#ar_Color#" label="Array - Emplicit">
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