
    <!--- Header --->
    <cfmodule template="\view\headerIn.cfm">

        <!--- Show modal only once --->
        <!--- <cfif NOT structKeyExists(application, "successLogin") OR NOT application.successLogin> --->

            <!--- Show success modal for Admin and Members. Else redirect back to Login page --->
            <cftry>
            <cfif  structKeyExists(session.userSession, 'is_Admin') AND  session.userSession.is_Admin EQ 1>

                <cfmodule template="\view\modalNotif.cfm" title="Success" message="Login successfully, Welcome back Admin! 
                Your session will expire at #session.userSession.sessionEnd#"> 

            <cfelseif  structKeyExists(session.userSession, 'is_Admin') AND  session.userSession.is_Admin EQ 0>

                <cfmodule template="\view\modalNotif.cfm" title="Success" message="Login successfully, Welcome back Member!
                Your session will expire at #session.userSession.sessionEnd#"> 
            
            </cfif>

            <cfcatch type="any">
                <cflocation url="index.cfm" addToken="false" statusCode="301"> 
            </cfcatch>
        </cftry>
            
        
        <!--- Set the flag in the application scope to indicate that the file has been rendered --->
        <!--- <cfset application.successLogin = true> --->

        <!--- </cfif> --->


        

    <div class="container mt-3">

        <!--- Delete User based on ID --->  
        <cfif structKeyExists(url, "method") and url.method eq "deleteUser">
            <cfinvoke component="service.user"
            method="deleteUserById"
            returnvariable="deleteUserById">	
            <cfinvokeargument name="id" value=#url.id#>			
            </cfinvoke>	
        </cfif>

        <!--- Retrieve All Users from Database --->                
        <!--- <cfinvoke component="service.user"
        method="retrieveUserAll"
        returnvariable="retrieveUserAll">		
        </cfinvoke>	 --->

        <!--- Retrieve All Users from Database --->  
        <cfset retrieveUserAll=application.userService.retrieveUserAll()>

        <!--- Users Table --->
        <cfmodule template="\view\userTable.cfm" userAll=#retrieveUserAll#>       
            
            
        <cfdump var="#session.userSession#">

    </div>