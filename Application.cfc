<cfcomponent>
	<cfset this.name = "TestApplication">
	<cfset this.applicationtimeout="#createtimespan(0,0,1,0)#">
    <cfset this.sessionManagement=true>
	<cfset this.sessionTimeout="#createtimespan(0,0,0,30)#">
	<cfset this.datasource="central_remote">

	<!--- Regular Mapping(struct): View - CFM --->
	<cfset this.mappings['/sampleMappingToView']=getDirectoryFromPath(getCurrentTemplatePath())&"view">

	<!--- Regular Mapping(struct): Service - CFC --->
	<cfset this.mappings['/sampleMappingToComponent']=getDirectoryFromPath(getCurrentTemplatePath())&"service">

	<!--- Customtagpaths Mapping(array): View - CFM --->
	<cfset this.customtagpaths=[getDirectoryFromPath(getCurrentTemplatePath())&"view"]>

	<!--- Componentpaths Mapping(array): View - CFC --->
	<cfset this.componentpaths=[getDirectoryFromPath(getCurrentTemplatePath())&"service"]>

	<cffunction name="onApplicationStart">
		<script>
			<cfoutput>
			    console.log("01. Application Start")
				console.log("Application Name: #this.name#")
				console.log("")
			</cfoutput>
		</script>
	</cffunction>

	<cffunction name="onSessionStart">
		<script>
			<cfoutput>
			     console.log("02. Session Start")
				 console.log("")
			 </cfoutput>
		</script>
	</cffunction>

	<cffunction name="onRequestStart">
		<script>
			<cfoutput>			
			console.log("03. OnRequestStart Start")
			console.log("")
			</cfoutput>
		</script>

		<!--- defining a user Service --->
		<cfset application.userService = createObject("component", "service.user")/>

		<!--- delare a sample session --->
		<!--- <cfset session.sampleSession = {'street'='jupiter', 'city'='makati'}/>
		<cfdump var="#session.sampleSession#">
		<cfoutput>Street: #session.sampleSession.street# </cfoutput> --->

		<!--- Html: Head and Start of Body --->
		<cfoutput>
			<!DOCTYPE html>
			<html>
			<head>
				<title>
					TBD
				</title>
				<!-- Bootstrap CSS -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
					rel="stylesheet" 
					integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
					crossorigin="anonymous">

					<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
			</head>
			<body>
		</cfoutput>
		

	</cffunction>

	<cffunction name="onRequest">
		<script>
			<cfoutput>
			    console.log("04. OnRequest Start")
				console.log("")
			</cfoutput>
		</script>
		<cfargument name = "targetPage" type="String" required=true/>
		<cfinclude template=#Arguments.targetPage#>
	</cffunction>

	<cffunction name="onRequestEnd">
		<script>
			<cfoutput>
			    console.log("05. OnRequestEnd Start")
				console.log("")
			</cfoutput>
		</script>

		<!--- Html: End of Body --->
		<cfoutput>		

			<!-- Option 1: Bootstrap Bundle with Popper -->
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
				integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
				crossorigin="anonymous"></script>
		</body>
		</html>
		</cfoutput>

	</cffunction>

</cfcomponent>