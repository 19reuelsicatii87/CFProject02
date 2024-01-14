<cfcomponent displayname="Events" hint="ColdFusion Component for Events">
 <!--- This function retrieves all customers from the database --->
 

 <!---Retrieve One Event--->
  <cffunction name="retrieveEvent"
	hint="Gets one events from the database" returntype="query">
   <cfquery name="getEvent" datasource="hdStreet">
	 SELECT * FROM TBL_EVENTS WHERE FLD_EVENTID = 1
   </cfquery>
   <cfreturn getEvent>
 </cffunction>
 
 
  <!---Retrieve All Events--->
 <cffunction 
 	access="public"
 	name="retrieveEvents"
	hint="Gets all events from the database" 
	returntype="query">
	
   <cfquery name="getEvents" datasource="hdStreet">
	 SELECT * FROM TBL_EVENTS
   </cfquery>
   
   <cfreturn getEvents>
   
 </cffunction>
 
 
 <!---Retrieve Event based on ID--->
  <cffunction name="retrieveEventbyID"
	hint="Gets one events by ID from the database" returntype="query">
	
	<cfargument name="id"
      type="integer"
      required="yes">
	
   <cfquery name="getEventbyID" datasource="hdStreet">
	 SELECT * FROM TBL_EVENTS WHERE FLD_EVENTID = #id#
   </cfquery>
   <cfreturn getEventbyID>
 </cffunction>
 
  <!---Retrieve FORM HMTL--->
 <cffunction name="getSampleForm" returnType="string">
 	
 	<cfargument name="id"
      type="integer"
      required="yes">
      
	<cfquery name="getEventbyIDComponentInjetion" datasource="hdStreet">
	 SELECT * FROM TBL_EVENTS WHERE FLD_EVENTID = #id#
	</cfquery>
 	
 	
        <cfset var formContent = "
            <form>
			  <div class='mb-3'>
			    <label for='exampleInputEmail1' class='form-label'>Email address --  #getEventbyIDComponentInjetion.FLD_EVENTNAME#</label>
			    <input type='email' class='form-control' id='exampleInputEmail1' aria-describedby='emailHelp'>
			    <div id='emailHelp' class='form-text'>We'll never share your email with anyone else.</div>
			  </div>
			  <div class='mb-3'>
			    <label for='exampleInputPassword1' class='form-label'>Password</label>
			    <input type='password' class='form-control' id='exampleInputPassword1'>
			  </div>
			  <div class='mb-3 form-check'>
			    <input type='checkbox' class='form-check-input' id='exampleCheck1'>
			    <label class='form-check-label' for='exampleCheck1'>Check me out</label>
			  </div>
			  <button type='submit' class='btn btn-primary'>Submit</button>
			</form>
        ">
        <cfreturn formContent>
    </cffunction>
 
</cfcomponent>