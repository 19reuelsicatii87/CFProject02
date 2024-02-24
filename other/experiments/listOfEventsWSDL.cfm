
			
		
		<!---Retrieve Event based on ID--->
		<cfinvoke 
		method="listEventbyID"
		returnvariable="oneEventbyID"
		webservice="http://127.0.0.1:8600/cfTraining/experiments/components/eventsWSDL.cfc?wsdl">>		
			<cfinvokeargument name="id" value=4>		
		</cfinvoke>	

		
		<cfset listOfEventbyID = XmlParse(oneEventbyID)>
		<cfdump var="#listOfEventbyID#">
		
		
		
		
		