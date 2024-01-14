<!DOCTYPE html>
<html>
   <head>
      <title>Test Page</title>
   </head>
   <body>

      <!--- Simple CFOUTPUT --->
      <cfset testVar = "Hello World">
      <cfoutput>
         <h1>#testVar#</h1>
         Nothing to display
      </cfoutput>

      <!--- LOCAL DataSource --->
      <cfquery datasource="central" name="rs_user_local">
         SELECT * FROM tbl_user
      </cfquery>
      <h1>Local DB - DataSource</h1>
      <cfoutput query="rs_user_local">
         <p>#id# #firstName# #lastName#</p>
      </cfoutput>

      <!--- REMOTE DataSource --->
      <cfquery datasource="central_remote" name="rs_user_remote">
         SELECT * FROM tbl_user
      </cfquery>
      <h1>Remote DB - DataSource</h1>

      <h3>List of firstName + lastName</h3>
      <cfoutput query="rs_user_remote">
         <p>#id# #firstName# #lastName#</p>
      </cfoutput>

      <br>

      <h3>Selection of userName</h3>
      <cfform>
         <cfselect name="fld_user" id="fld_user" query="rs_user_remote" value="id" display="username">
            <option value="0" selected>Please select username</option>
         </cfselect >
      </cfform>

     


    

   </body>
</html>