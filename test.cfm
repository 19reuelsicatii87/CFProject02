      <!--- Simple CFOUTPUT --->
      <cfset testVar = "Hello World">
      <cfoutput>
         <h1>#testVar#</h1>
         Nothing to display
      </cfoutput>

      <hr/>

      <!--- LOCAL DataSource --->
      <!--- <cfquery datasource="central" name="rs_user_local">
         SELECT * FROM tbl_user
      </cfquery>
      <h1>Local DB - DataSource</h1>
      <cfoutput query="rs_user_local">
         <p>#id# #firstName# #lastName#</p>
      </cfoutput> --->

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
      <hr/>

      <h3>Selection of userName</h3>
      <cfform>
         <cfselect name="fld_user" id="fld_user" query="rs_user_remote" value="id" display="username">
            <option value="0" selected>Please select username</option>
         </cfselect >
      </cfform>

      <br>
      <hr/>

      <h3>Regular Mapping - View (CFM)</h3>
      <cfinclude template="/sampleMappingToView/loginForm.cfm">
      <br>
      <cfinclude template="/sampleMappingToView/registrationForm.cfm">
      <br>
      <hr/>

      <h3>Regular Mapping - Component (CFC)</h3>
      <cfset getUserAll=new sampleMappingToComponent.user().retrieveUserAll()>
      <cfdump var="#getUserAll#">
      <br>
      <cfoutput><b>SQL Used:</b> #getUserAll.userResult.sql#</cfoutput>

      <br>
      <hr/>

      <h3>CustomTagPath Mapping - View (CFM)</h3>
      <cf_loginForm>
      <br>
      <cf_registrationForm>
      <br>
      <hr/>


      <h3>ComponentPath Mapping - Component (CFC)</h3>
      <cfset getUserAll2=new user()>
      <cfdump var="#getUserAll2#">
      <br>
      <cfoutput><b>SQL Used:</b> #getUserAll2.retrieveUserAll().userResult.sql#</cfoutput>
      <br>
      <b>Result Set:</b>
      <cfdump var="#getUserAll2.retrieveUserAll().user#">
      <br>
      <br>
      <b>Component - Table:</b>
      <cf_userTable userAll=#getUserAll2.retrieveUserAll()#>   
      <br>
      <br>
      <b>Raw - Table:</b>
      <table class="table">
         <thead>
           <tr>
             <th scope="col">Username</th>
             <th scope="col">Name</th>
             <th scope="col" class="d-flex justify-content-center">Action</th>
           </tr>
         </thead>
         <tbody>
             <cfoutput>
               <cfloop index="i" from="1" to="4">
                  <tr>
                     <td>#getUserAll2.retrieveUserAll().user.username[i]#</td>
                     <td>#getUserAll2.retrieveUserAll().user.firstName[i]# #getUserAll2.retrieveUserAll().user.lastName[i]#</td>
                     <td class="d-flex justify-content-center">
                           <a class="me-2" href="/user.cfm?id=#getUserAll2.retrieveUserAll().user.id[i]#">
                              <i class="bi bi-pencil-square"></i>
                           </a>
                           <a href="/users.cfm?method=deleteUser&id=#getUserAll2.retrieveUserAll().user.id[i]#">
                              <i class="bi bi-trash"></i>
                           </a>
                     </td>
                  </tr>
               </cfloop>
             </cfoutput>              
         </tbody>
      </table>
           

      <br>
      <hr/>
    
      <h3>Accessing Session Var</h3>
      <cfset session.sampleSessionVar = {'firstName'='Reuel', 'lastName'='Sicat'}/>
      <cfdump var="#session.sampleSessionVar#">
      <cfoutput>FirstName: #session.sampleSessionVar.firstName# </cfoutput>

      <cfdump var="#session.userSession#">
      
      <br>
      <hr/>
