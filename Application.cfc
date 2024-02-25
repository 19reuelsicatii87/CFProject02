<cfcomponent>
	<cfset this.name = "TestApplication">
	<cfset this.applicationtimeout="#createtimespan(0,0,1,0)#">
    <cfset this.sessionManagement=true>
	<cfset this.sessionTimeout="#createtimespan(0,0,0,30)#">
	<cfset this.datasource="central_remote">

	<!--- Global Mapping: View Component --->
	<!--- Cannot make it work. Need to explore more --->
	<!--- <cfset this.mappings['/view']=getDirectoryFromPath(getCurrentTemplatePath())&"view">; --->

	<!--- Global Mapping: Service Component --->
	<!--- Cannot make it work. Need to explore more --->
	<!--- <cfset this.mappings['/service']=getDirectoryFromPath(getCurrentTemplatePath())&"service">; --->

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
	</cffunction>

</cfcomponent>