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
		
		<!---Retrieve One Event--->
		<cfinvoke component="components.events"
		method="retrieveEvent"
		returnvariable="oneEvent"></cfinvoke>
		
		<div class="container">
			<div class="row m-5 p-5">
			<table class="table">
				<thead>
					 <tr>
					   <th>EVENT NAME</th>
					   <th>EVENT VENUE</th>
					   <th>EVENT DESCRIPTION</th>
					 </tr>
			 	</thead>
			<cfoutput query="oneEvent">
			 <tr>
			   <td>#FLD_EVENTNAME#</td>
			   <td>#FLD_EVENTVENUE#</td>
			   <td>#FLD_EVENTDESCRIPTION#</td>
			 </tr>
			</cfoutput>
			</table>		
			</div>
		</div>
		
		<br>
		<br>
		
		<!---Retrieve All Events--->
		<cfinvoke component="components.events"
		method="retrieveEvents"
		returnvariable="allEvents"></cfinvoke>	

		
		<div class="container">
			<div class="row m-5 p-5">
			<table class="table">
				<thead>
					 <tr>
					   <th>EVENT NAME</th>
					   <th>EVENT VENUE</th>
					   <th>EVENT DESCRIPTION</th>
					 </tr>
			 	</thead>
			<cfoutput query="allEvents">
			 <tr>
			   <td>#FLD_EVENTNAME#</td>
			   <td>#FLD_EVENTVENUE#</td>
			   <td>#FLD_EVENTDESCRIPTION#</td>
			 </tr>
			</cfoutput>
			</table>		
			</div>
		</div>
		
		<br>
		<br>		
		
		<!---Retrieve Event based on ID--->
		<cfinvoke component="components.events"
		method="retrieveEventbyID"
		returnvariable="oneEventbyID">		
			<cfinvokeargument name="id" value=4>		
		</cfinvoke>	

		
		<div class="container">
			<div class="row m-5 p-5">
			<table class="table">
				<thead>
					 <tr>
					   <th>EVENT NAME</th>
					   <th>EVENT VENUE</th>
					   <th>EVENT DESCRIPTION</th>
					 </tr>
			 	</thead>
			<cfoutput query="oneEventbyID">
			 <tr>
			   <td>#FLD_EVENTNAME#</td>
			   <td>#FLD_EVENTVENUE#</td>
			   <td>#FLD_EVENTDESCRIPTION#</td>
			 </tr>
			</cfoutput>
			</table>		
			</div>
		</div>
		
		<!--- Using cfinvoke to call the getSampleForm function from SampleComponent.cfc --->
    	<cfinvoke 
	    	component="components.events" 
	    	method="getSampleForm" 
	    	returnvariable="sampleForm">
    			<cfinvokeargument name="id" value=4>		
		</cfinvoke>	
    	
		<div class="container">
			<div class="row m-5 p-5">
				<h2>Sample Form</h2>
    			<cfoutput>#sampleForm#</cfoutput>	
			</div>
		</div>
		
		
		
		
		
		
		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		        crossorigin="anonymous">

		</script>
	</body>
</html>