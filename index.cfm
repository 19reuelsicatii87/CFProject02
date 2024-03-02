

      <!---Container: Header Section--->
      <cfmodule template="\view\headerOut.cfm">
      <!--- <cfinclude template="\view\headerOut.cfm"> --->
      

      <!---Validate that Form has been submitted--->
      <cfif structKeyExists(FORM, "fld_submitLoginForm")>

         <!--- <cfdump var="#FORM#"> --->

         <!--- <cfinvoke component="service.user"
            method="retrieveUserByUsernamePassword"
            returnvariable="userByUsernamePassword">		
               <cfinvokeargument name="username" value=#form.fld_username#>		
               <cfinvokeargument name="password" value=#form.fld_password#>	
         </cfinvoke>	 --->

         <!--- Service define over Application.cfc --->
         <cfset userByUsernamePassword=application.userService.retrieveUserByUsernamePassword(
            #form.fld_username#,
            #form.fld_password#)>

         <!--- <cfdump var="#userByUsernamePassword#"> --->

         <!---Server(Custom) Side Validation--->
         <cfif #userByUsernamePassword.userResult.recordCount# == 1 &&  #userByUsernamePassword.user.is_admin == 1#>

            <!--- <cfmodule template="\view\modalNotif.cfm" title="Success" message="Login successfully, Welcome back Admin!">  --->
            
            <cfset session.userSession = {'is_Admin'='1', 'sessionEnd'=#dateAdd("n", 5, now())#}/>
            <cflocation url="users.cfm" addToken="true" statusCode="301"> 
           

            <!--- <cfscript>

               // Add session attributes
               session.userSession = {'is_Admin'='1', 'sessionEnd'=#dateAdd("n", 5, now())#}

               // Delay execution for 5 seconds (5000 milliseconds)
               sleep(5000);
           
               // Redirect to the desired URL after the delay
               location("users.cfm", true, 301);
           </cfscript> --->

         <cfelseif #userByUsernamePassword.userResult.recordCount# == 1 &&  #userByUsernamePassword.user.is_admin == 0#>

            <!--- <cfmodule template="\view\modalNotif.cfm" title="Success" message="Login successfully, Welcome back Member!">   --->
            <cfset session.userSession = {'is_Admin'='0', 'sessionEnd'=#dateAdd("n", 5, now())#}/>
            <cflocation url="users.cfm" addToken="true" statusCode="301">

         <cfelse>
            <cfmodule template="\view\modalNotif.cfm" title="Error Encountered" message="Username and Password are incorrect!">
         </cfif>


      </cfif>
      
      <!---Container: Login Section--->
      <cfmodule template="\view\loginForm.cfm">


      <cfdump var="#session.userSession#">