<cfcomponent>
 <cffunction name="listEventbyID"
   access="public"
   returntype="string"
   output="false">
​
   <cfargument name="id"
     type="integer"
     required="yes">
​
   <cfset Var EventList = "">
   <cfset Var getEvents = "">
   <cfquery name="getEvents" datasource="hdStreet">
       SELECT * FROM TBL_EVENTS WHERE FLD_EVENTID = #id#
   </cfquery>
​
   <cfsavecontent variable="EventList">
     <books>
       <cfoutput query="getEvents">
         <event id="#FLD_EVENTID#">
	    	<booktitle>#XMLFormat(FLD_EVENTNAME)#</booktitle>
            <teaser>#XMLFormat(FLD_EVENTVENUE)#</teaser>
            <price>#XMLFormat(FLD_EVENTDESCRIPTION)#</price>
          </event>
        </cfoutput>
      </books>
    </cfsavecontent>

    <cfreturn EventList>
  </cffunction>
</cfcomponent>
